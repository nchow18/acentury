<?php

declare(strict_types=1);

namespace Vdlp\TwoFactorAuthentication;

use Backend\Classes\AuthManager;
use Backend\Controllers\Users;
use Backend\Models\User;
use Backend\Widgets\Lists;
use Illuminate\Contracts\Encryption\DecryptException;
use Illuminate\Contracts\Events\Dispatcher;
use Illuminate\Http\Request;
use October\Rain\Exception\ValidationException;
use October\Rain\Flash\FlashBag;
use Psr\Log\LoggerInterface;
use System\Classes\PluginBase;
use Vdlp\TwoFactorAuthentication\Classes\EventSubscribers\BackendEventSubscriber;
use Vdlp\TwoFactorAuthentication\Classes\TwoFactorAuthentication\SecretKey;
use Vdlp\TwoFactorAuthentication\Classes\TwoFactorAuthentication\TwoFactorAuthentication;

final class Plugin extends PluginBase
{
    public const SESSION_KEY = 'vdlp_twofactorauthentication';

    public function pluginDetails(): array
    {
        return [
            'name' => 'vdlp.twofactorauthentication::lang.plugin.name',
            'description' => 'vdlp.twofactorauthentication::lang.plugin.description',
            'author' => 'Van der Let & Partners',
            'icon' => 'icon-leaf',
            'homepage' => 'http://octobercms.com/plugin/vdlp/twofactorauthentication',
        ];
    }

    public function boot(): void
    {
        /** @var Dispatcher $eventDispatcher */
        $eventDispatcher = resolve(Dispatcher::class);
        $eventDispatcher->subscribe(BackendEventSubscriber::class);
    }

    public function register(): void
    {
        $this->registerServiceProviders();

        /** @noinspection PhpUndefinedMethodInspection */
        Users::extendListColumns(static function (Lists $widget): void {
            $widget->addColumns([
                'vdlp-twofactorauthentication_google2fa_secret' => [
                    'label' => trans('vdlp.twofactorauthentication::lang.users.two_factor_authentication'),
                    'type' => 'two_factor_authentication_enabled',
                ],
            ]);
        });

        Users::extend(static function (Users $controller): void {
            $controller->addViewPath(plugins_path('vdlp/twofactorauthentication/controllers/users'));

            /** @var User $user */
            $user = AuthManager::instance()->getUser();

            $controller->addDynamicMethod(
                'onEnableTwoFactorAuthenticationPopup',
                static function () use ($controller, $user) {
                    return $controller->makePartial('2fa_enable_popup', ['user' => $user]);
                }
            );

            $controller->addDynamicMethod(
                'onDisableTwoFactorAuthenticationPopup',
                static function () use ($controller, $user) {
                    return $controller->makePartial('2fa_disable_popup', ['user' => $user]);
                }
            );

            /** @var Request $request */
            $request = resolve(Request::class);

            /** @var SecretKey $secretKey */
            $secretKey = resolve(SecretKey::class);

            /** @var TwoFactorAuthentication $twoFactorAuthentication */
            $twoFactorAuthentication = resolve(TwoFactorAuthentication::class);

            /** @var LoggerInterface $log */
            $log = resolve(LoggerInterface::class);

            $controller->addDynamicMethod(
                'onShowSupportedApplications',
                static function () use ($controller) {
                    return $controller->makePartial('2fa_supported_applications');
                }
            );

            $controller->addDynamicMethod(
                'onEnableTwoFactorAuthentication',
                static function () use ($controller, $request, $secretKey, $twoFactorAuthentication, $user, $log): array {
                    if (!$twoFactorAuthentication->verifyKey($request->get('secret'), $request->get('key'))) {
                        throw new ValidationException([
                            'secret' => trans('vdlp.twofactorauthentication::lang.2fa.invalid_authentication_code'),
                        ]);
                    }

                    $user->setAttribute(
                        'vdlp-twofactorauthentication_google2fa_secret',
                        $secretKey->encrypt($request->get('secret'))
                    );

                    $user->save();

                    $log->info('Vdlp.TwoFactorAuthentication: User has enabled 2FA.', [
                        'user_id' => $user->getKey(),
                    ]);

                    return [
                        '#Form-field-User-2fa_setup_button-group' => $controller->makePartial('2fa_setup_button'),
                    ];
                }
            );

            $controller->addDynamicMethod(
                'onDisableTwoFactorAuthenticationSuperUser',
                static function () use ($controller, $request, $log): array {
                    $authManager = AuthManager::instance();

                    $superUserId = null;
                    $isAllowedToDisable2FA = false;

                    if ($authManager->check() && $authManager->getUser() instanceof User) {
                        /** @var User $user */
                        $user = $authManager->getUser();
                        $superUserId = $user->getKey();

                        $isAllowedToDisable2FA = (bool) $user->getAttribute('is_superuser')
                            && !empty($user->getAttribute('vdlp-twofactorauthentication_google2fa_secret'));
                    }

                    /** @var FlashBag $flash */
                    $flash = resolve('flash');

                    if (!$isAllowedToDisable2FA) {
                        $flash->error(trans('vdlp.twofactorauthentication::lang.2fa.disable_2fa_not_allowed'));

                        return [];
                    }

                    $userId = (int) $request->get('id');

                    /** @var User $user */
                    $user = User::query()->findOrFail($userId);
                    $user->setAttribute('vdlp-twofactorauthentication_google2fa_secret', null);
                    $user->save();

                    $flash->success(trans('vdlp.twofactorauthentication::lang.2fa.disable_2fa_success'));

                    $log->info('Vdlp.TwoFactorAuthentication: Super User has disabled 2FA for user.', [
                        'super_user_id' => $superUserId,
                        'user_id' => $userId,
                    ]);

                    return [
                        '#Form-field-User-2fa_disable_button-group' => $controller->makePartial('2fa_disable_button', [
                            'user' => $user,
                        ]),
                    ];
                }
            );

            $controller->addDynamicMethod(
                'onDisableTwoFactorAuthentication',
                static function () use ($controller, $request, $secretKey, $twoFactorAuthentication, $user, $log): array {
                    try {
                        $currentSecret = $secretKey->decrypt(
                            (string) $user->getAttribute('vdlp-twofactorauthentication_google2fa_secret')
                        );
                    } catch (DecryptException $exception) {
                        throw new ValidationException([
                            'secret' => $exception->getMessage(),
                        ]);
                    }

                    if (
                        $currentSecret !== ''
                        && !$twoFactorAuthentication->verifyKey($currentSecret, $request->get('key'))
                    ) {
                        throw new ValidationException([
                            'secret' => trans('vdlp.twofactorauthentication::lang.2fa.invalid_authentication_code'),
                        ]);
                    }

                    $user->setAttribute('vdlp-twofactorauthentication_google2fa_secret', null);
                    $user->save();

                    $log->info('Vdlp.TwoFactorAuthentication: User has disabled 2FA.', [
                        'user_id' => $user->getKey(),
                    ]);

                    return [
                        '#Form-field-User-2fa_setup_button-group' => $controller->makePartial('2fa_setup_button'),
                    ];
                }
            );
        });
    }

    public function registerListColumnTypes(): array
    {
        return [
            'two_factor_authentication_enabled' => static function ($value): string {
                $format = '<div class="oc-icon-circle" style="color: %s">%s</div>';

                if (!empty($value)) {
                    return sprintf($format, '#95b753', e(trans('backend::lang.list.column_switch_true')));
                }

                return sprintf($format, '#cc3300', e(trans('backend::lang.list.column_switch_false')));
            },
        ];
    }

    private function registerServiceProviders(): void
    {
        $this->app->register(ServiceProvider::class);
    }
}
