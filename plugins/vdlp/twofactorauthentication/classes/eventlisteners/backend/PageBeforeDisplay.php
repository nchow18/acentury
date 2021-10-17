<?php

declare(strict_types=1);

namespace Vdlp\TwoFactorAuthentication\Classes\EventListeners\Backend;

use Backend\Classes\Controller;
use Backend\Controllers\Auth;
use Backend\Helpers\Backend;
use Backend\Models\User;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Psr\Log\LoggerInterface;
use Symfony\Component\HttpFoundation\Exception\SuspiciousOperationException;
use Throwable;
use Vdlp\TwoFactorAuthentication\Classes\TwoFactorManager;

final class PageBeforeDisplay
{
    private Request $request;
    private Backend $backend;
    private LoggerInterface $log;

    public function __construct(Request $request, Backend $backend, LoggerInterface $log)
    {
        $this->request = $request;
        $this->backend = $backend;
        $this->log = $log;
    }

    /**
     * @throws SuspiciousOperationException
     */
    public function handle(Controller $controller): ?RedirectResponse
    {
        if (!($controller instanceof Auth) || $this->request->getMethod() !== 'POST') {
            return null;
        }

        $twoFactorManager = new TwoFactorManager((string) $this->request->ip());

        try {
            $twoFactorManager->interceptLogin(
                $this->request->get('login'),
                $this->request->get('password'),
                (bool) $this->request->get('remember', false)
            );

            $userId = $twoFactorManager->getInterceptionUserId();

            $this->log->info('Vdlp.TwoFactorAuthentication: Intercepted user login.');

            /** @var User $user */
            $user = User::query()->findOrFail($userId);

            $secret = (string) $user->getAttribute('vdlp-twofactorauthentication_google2fa_secret');

            if ($secret === '') {
                $userRequiresSetup = $this->requiresSetUp($user);

                if ($userRequiresSetup) {
                    $this->log->info('Vdlp.TwoFactorAuthentication: User has no secret, 2FA setup required.', [
                        'user_id' => $userId,
                    ]);

                    return $this->backend->redirect('vdlp/twofactorauthentication/twofactor/setup');
                }

                return null;
            }

            $this->log->info('Vdlp.TwoFactorAuthentication: Verification needed, redirecting user to verify page.', [
                'user_id' => $userId,
            ]);

            return $this->backend->redirect('vdlp/twofactorauthentication/twofactor/verify');
        } catch (Throwable $exception) {
            $this->log->info('Vdlp.TwoFactorAuthentication: Intercepting user login failed.', [
                'error' => $exception->getMessage(),
                'login' => $this->request->get('login'),
                'ip' => (string) $this->request->ip(),
            ]);

            return null;
        }
    }

    private function requiresSetUp(User $user): bool
    {
        if ($user->isSuperUser() && config('twofactorauthentication.force_all_super_users', false) === true) {
            return true;
        }

        return (bool) config('twofactorauthentication.force_all_users', false);
    }
}
