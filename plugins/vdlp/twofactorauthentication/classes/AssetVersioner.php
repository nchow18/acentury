<?php

declare(strict_types=1);

namespace Vdlp\TwoFactorAuthentication\Classes;

use Carbon\Carbon;
use Throwable;

final class AssetVersioner
{
    public static ?string $version = null;

    public static function addVersion(string $asset): string
    {
        if (self::$version === null) {
            self::$version = (string) Carbon::now()->timestamp;

            try {
                $contents = sha1((string) file_get_contents(plugins_path('vdlp/twofactorauthentication/CHANGELOG.md')));

                self::$version = substr($contents, 0, 10);
            } catch (Throwable $throwable) {
                // ..
            }
        }

        return $asset . (str_contains($asset, '?') ? '&' : '?') . 'v=' . self::$version;
    }
}
