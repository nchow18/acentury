<?php

declare(strict_types=1);

namespace Vdlp\TwoFactorAuthentication;

use Illuminate\Contracts\Encryption\Encrypter;
use LogicException;
use October\Rain\Support\ServiceProvider as ServiceProviderBase;
use PragmaRX\Google2FA\Google2FA;
use Vdlp\TwoFactorAuthentication\Classes\TwoFactorAuthentication\GoogleTwoFactorAuthentication;
use Vdlp\TwoFactorAuthentication\Classes\TwoFactorAuthentication\SecretKey;
use Vdlp\TwoFactorAuthentication\Classes\TwoFactorAuthentication\TwoFactorAuthentication;

final class ServiceProvider extends ServiceProviderBase
{
    public function boot(): void
    {
        $this->publishes([
            __DIR__ . '/config.php' => config_path('twofactorauthentication.php'),
        ], 'config');

        $this->mergeConfigFrom(__DIR__ . '/config.php', 'twofactorauthentication');
    }

    /**
     * @throws LogicException
     */
    public function register(): void
    {
        $this->app->bind(GoogleTwoFactorAuthentication::class, function () {
            return new GoogleTwoFactorAuthentication(new Google2FA());
        });

        $this->app->bind(SecretKey::class, function () {
            return new SecretKey(resolve(Encrypter::class));
        });

        $this->app->alias(GoogleTwoFactorAuthentication::class, TwoFactorAuthentication::class);
    }
}
