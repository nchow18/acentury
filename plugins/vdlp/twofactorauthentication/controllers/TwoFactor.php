<?php

declare(strict_types=1);

namespace Vdlp\TwoFactorAuthentication\Controllers;

use Backend\Classes\AuthManager;
use Backend\Classes\Controller;
use Backend\Helpers\Backend;
use Backend\Models\AccessLog;
use Backend\Models\User;
use Illuminate\Contracts\Encryption\DecryptException;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use LogicException;
use October\Rain\Auth\AuthException;
use October\Rain\Exception\ValidationException;
use October\Rain\Flash\FlashBag;
use Psr\Log\LoggerInterface;
use Throwable;
use Vdlp\TwoFactorAuthentication\Classes\AssetVersioner;
use Vdlp\TwoFactorAuthentication\Classes\Exceptions\UnableToVerifyKey;
use Vdlp\TwoFactorAuthentication\Classes\InterceptionValidationResult;
use Vdlp\TwoFactorAuthentication\Classes\TwoFactorAuthentication\SecretKey;
use Vdlp\TwoFactorAuthentication\Classes\TwoFactorAuthentication\TwoFactorAuthentication;
use Vdlp\TwoFactorAuthentication\Classes\TwoFactorManager;

final class TwoFactor extends Controller
{
    /** @var string[] */
    protected $publicActions = [
        'verify',
        'setup',
        'setup_onSubmit',
    ];

    private Backend $backend;
    private FlashBag $flashBag;
    private Request $request;
    private SecretKey $secretKey;
    private TwoFactorAuthentication $twoFactorAuthentication;
    private TwoFactorManager $twoFactorManager;
    private LoggerInterface $log;

    public function __construct(
        Backend $backend,
        Request $request,
        SecretKey $secretKey,
        TwoFactorAuthentication $twoFactorAuthentication,
        LoggerInterface $log
    ) {
        parent::__construct();

        $this->layout = 'auth';
        $this->bodyClass = 'preload';

        $this->backend = $backend;
        $this->flashBag = resolve('flash');
        $this->request = $request;
        $this->secretKey = $secretKey;
        $this->twoFactorAuthentication = $twoFactorAuthentication;
        $this->twoFactorManager = new TwoFactorManager((string) $request->ip());
        $this->log = $log;
    }

    /**
     * @throws LogicException|UnableToVerifyKey
     */
    public function verify(): ?RedirectResponse
    {
        $this->bodyClass = 'signin';

        $result = $this->validateInterception();

        if (!$result->isValid()) {
            $this->log->info('Vdlp.TwoFactorAuthentication: Interception is not valid.', [
                'action' => 'verify',
                'reason' => $result->getReason(),
            ]);

            return $result->getRedirectResponse();
        }

        if (post('postback')) {
            $this->log->info('Vdlp.TwoFactorAuthentication: Received "postback" parameter, verify key.', [
                'user_id' => $result->getUser()->getKey(),
            ]);

            return $this->verifyKey($result);
        }

        $this->bodyClass .= ' preload';

        return null;
    }

    /**
     * @throws LogicException
     */
    public function setup(): ?RedirectResponse
    {
        $this->bodyClass = 'signin';

        $this->addCss(AssetVersioner::addVersion('/plugins/vdlp/twofactorauthentication/assets/css/setup.css'));

        $result = $this->validateInterception();

        if (!$result->isValid()) {
            $this->log->info('Vdlp.TwoFactorAuthentication: Interception is not valid.', [
                'action' => 'setup',
                'reason' => $result->getReason(),
            ]);

            return $result->getRedirectResponse();
        }

        try {
            $secretKey = $this->twoFactorAuthentication->generateSecretKey(
                32,
                str_pad((string) $result->getUser()->getKey(), 20, 'X')
            );

            $this->vars['secretKey'] = $secretKey;

            $this->vars['qrCodeData'] = $this->twoFactorAuthentication->getQRCodeData(
                $this->request->getHost(),
                $result->getUser()->getAttribute('email'),
                $secretKey,
                300
            );

            $this->log->info('Vdlp.TwoFactorAuthentication: Generated setup QR-code for user.', [
                'user_id' => $result->getUser()->getKey(),
            ]);
        } catch (Throwable $exception) {
            $this->log->warning('Vdlp.TwoFactorAuthentication: Unable to initialize setup screen for 2FA.', [
                'error' => $exception->getMessage(),
                'user_id' => $result->getUser()->getKey(),
            ]);
        }

        return null;
    }

    /**
     * @throws LogicException|ValidationException
     */
    public function setup_onSubmit(): ?RedirectResponse
    {
        $result = $this->validateInterception();

        if (!$result->isValid()) {
            $this->log->info('Vdlp.TwoFactorAuthentication: Interception is not valid.', [
                'action' => 'setup_onSubmit',
                'reason' => $result->getReason(),
            ]);

            return $result->getRedirectResponse();
        }

        $secretKey = $this->request->post('secret');

        try {
            if ($this->twoFactorAuthentication->verifyKey($secretKey, $this->request->post('key'))) {
                $result->getUser()->setAttribute(
                    'vdlp-twofactorauthentication_google2fa_secret',
                    $this->secretKey->encrypt($secretKey)
                );

                $result->getUser()->save();

                $this->log->info('Vdlp.TwoFactorAuthentication: User has an update 2FA secret.', [
                    'user_id' => $result->getUser()->getKey(),
                ]);

                $this->login($result->getUser());

                $this->log->info('Vdlp.TwoFactorAuthentication: User is logged in.', [
                    'user_id' => $result->getUser()->getKey(),
                ]);

                // Everything is OK. Now redirect to backend.
                return $this->backend->redirect('');
            }
        } catch (Throwable $exception) {
            $this->log->warning('Vdlp.TwoFactorAuthentication: Enabling 2FA for user failed.', [
                'error' => $exception->getMessage(),
                'user_id' => $result->getUser()->getKey(),
            ]);
        }

        throw new ValidationException([
            'secret' => trans('vdlp.twofactorauthentication::lang.2fa.invalid_authentication_code'),
        ]);
    }

    public function setup_onShowSupportedApplications(): string
    {
        $this->viewPath = 'plugins/vdlp/twofactorauthentication/controllers/users';

        return $this->makePartial('2fa_supported_applications');
    }

    /**
     * @throws LogicException|UnableToVerifyKey
     */
    private function verifyKey(InterceptionValidationResult $result): ?RedirectResponse
    {
        if (!$this->request->has('key')) {
            $this->log->info('Vdlp.TwoFactorAuthentication: Request is missing "key" parameter.');

            return null;
        }

        try {
            $userSecret = $this->secretKey->decrypt(
                (string) $result->getUser()->getAttribute('vdlp-twofactorauthentication_google2fa_secret')
            );
        } catch (DecryptException $exception) {
            $this->log->warning('Vdlp.TwoFactorAuthentication: Unable to decrypt 2FA secret.', [
                'error' => $exception->getMessage(),
                'user_id' => $result->getUser()->getKey(),
            ]);

            return null;
        }

        if ($this->twoFactorAuthentication->verifyKey($userSecret, $this->request->get('key'))) {
            try {
                $this->log->info('Vdlp.TwoFactorAuthentication: Key verification success.', [
                    'user_id' => $result->getUser()->getKey(),
                ]);

                $this->login($result->getUser());

                $this->log->info('Vdlp.TwoFactorAuthentication: User is logged in.', [
                    'user_id' => $result->getUser()->getKey(),
                ]);
            } catch (AuthException $exception) {
                $this->flashBag->error($exception->getMessage());

                $this->log->warning('Vdlp.TwoFactorAuthentication: User cannot be logged in.', [
                    'error' => $exception->getMessage(),
                    'user_id' => $result->getUser()->getKey(),
                ]);

                return null;
            }

            // Everything is OK. Now redirect to backend.
            return $this->backend->redirect('');
        }

        $this->flashBag->error(
            trans('vdlp.twofactorauthentication::lang.2fa.invalid_authentication_code')
        );

        $this->log->info('Vdlp.TwoFactorAuthentication: Invalid authentication code.', [
            'user_id' => $result->getUser()->getKey(),
        ]);

        return null;
    }

    private function validateInterception(): InterceptionValidationResult
    {
        $invalidResponse = $this->backend->redirect('backend/auth/signin');

        if (!$this->twoFactorManager->isInterceptionValid()) {
            return InterceptionValidationResult::createInvalid($invalidResponse, 'No data found in session.');
        }

        if (AuthManager::instance()->check()) {
            return InterceptionValidationResult::createInvalid($invalidResponse, 'User already logged in.');
        }

        $userId = $this->twoFactorManager->getInterceptionUserId();

        if ($userId === null) {
            return InterceptionValidationResult::createInvalid($invalidResponse, 'No User ID found in session.');
        }

        try {
            /** @var User $user */
            $user = User::query()->findOrFail($userId);
        } catch (ModelNotFoundException $exception) {
            return InterceptionValidationResult::createInvalid(
                $invalidResponse,
                sprintf('User %d not found.', $userId)
            );
        }

        return InterceptionValidationResult::createValid($user);
    }

    /**
     * @throws AuthException
     */
    private function login(User $user): void
    {
        // Key is verified, log in user.
        AuthManager::instance()->login($user, $this->twoFactorManager->rememberUser());

        // Invalidate the interception session.
        $this->twoFactorManager->invalidateInterception();

        // Log the sign in event.
        AccessLog::add($user);
    }
}
