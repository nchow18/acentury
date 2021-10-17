<?php

declare(strict_types=1);

namespace Vdlp\TwoFactorAuthentication\Classes;

use Backend\Classes\AuthManager;
use Backend\Models\User;
use Illuminate\Contracts\Session\Session;
use October\Rain\Auth\AuthException;
use Vdlp\TwoFactorAuthentication\Plugin;

final class TwoFactorManager
{
    private AuthManager $authManager;
    private Session $session;
    private string $ipAddress;

    public function __construct(string $ipAddress)
    {
        $this->authManager = AuthManager::instance();
        $this->session = resolve(Session::class);
        $this->ipAddress = $ipAddress;
    }

    /**
     * @throws AuthException
     */
    public function interceptLogin(string $login, string $password, bool $remember): void
    {
        $backendForceRemember = (bool) config('cms.backendForceRemember', true);

        $remember = $backendForceRemember ? true : $remember;

        $user = $this->validateCredentials([
            'login' => $login,
            'password' => $password,
        ]);

        $this->session->put(Plugin::SESSION_KEY, [
            'user' => $user->getKey(),
            'remember' => $remember,
            'timestamp' => time() + config('twofactorauthentication.interception_ttl', 600),
        ]);
    }

    public function isInterceptionValid(): bool
    {
        if (!$this->session->has(Plugin::SESSION_KEY)) {
            return false;
        }

        $interceptionData = $this->session->get(Plugin::SESSION_KEY, []);

        if (
            is_array($interceptionData)
            && isset($interceptionData['timestamp'])
            && $interceptionData['timestamp'] > time()
        ) {
            return true;
        }

        $this->session->forget(Plugin::SESSION_KEY);

        return false;
    }

    public function invalidateInterception(): void
    {
        $this->session->forget(Plugin::SESSION_KEY);
    }

    public function getInterceptionUserId(): ?int
    {
        if (!$this->session->has(Plugin::SESSION_KEY)) {
            return null;
        }

        $interceptionData = $this->session->get(Plugin::SESSION_KEY, []);

        if (is_array($interceptionData)) {
            return $interceptionData['user'] ?? null;
        }

        return null;
    }

    public function rememberUser(): bool
    {
        if (!$this->session->has(Plugin::SESSION_KEY)) {
            return false;
        }

        $interceptionData = $this->session->get(Plugin::SESSION_KEY, []);

        if (is_array($interceptionData)) {
            return $interceptionData['remember'] ?? false;
        }

        return false;
    }

    /**
     * @throws AuthException
     */
    public function validateCredentials(array $credentials): User
    {
        /*
         * Default to the login name field or fallback to a hard-coded 'login' value
         */
        $loginName = $this->authManager->createUserModel()->getLoginName();
        $loginCredentialKey = isset($credentials[$loginName]) ? $loginName : 'login';

        if (empty($credentials['password']) || empty($credentials[$loginCredentialKey])) {
            throw new AuthException('Invalid credentials provided.');
        }

        /*
         * If the fallback 'login' was provided and did not match the necessary
         * login name, swap it over
         */
        if ($loginCredentialKey !== $loginName) {
            $credentials[$loginName] = $credentials[$loginCredentialKey];
            unset($credentials[$loginCredentialKey]);
        }

        $throttle = $this->authManager->findThrottleByLogin($credentials[$loginName], $this->ipAddress);
        $throttle->check();

        /*
         * Look up the user by authentication credentials.
         */
        try {
            /** @var User $user */
            $user = $this->authManager->findUserByCredentials($credentials);
        } catch (AuthException $ex) {
            $throttle->addLoginAttempt();

            throw $ex;
        }

        $throttle->clearLoginAttempts();
        $user->clearResetPassword();

        return $user;
    }
}
