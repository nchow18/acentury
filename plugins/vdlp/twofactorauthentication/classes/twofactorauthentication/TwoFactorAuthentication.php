<?php

declare(strict_types=1);

namespace Vdlp\TwoFactorAuthentication\Classes\TwoFactorAuthentication;

use Vdlp\TwoFactorAuthentication\Classes\Exceptions\UnableToGenerateQRCodeData;
use Vdlp\TwoFactorAuthentication\Classes\Exceptions\UnableToGenerateSecretKey;
use Vdlp\TwoFactorAuthentication\Classes\Exceptions\UnableToVerifyKey;

interface TwoFactorAuthentication
{
    /**
     * @throws UnableToVerifyKey
     */
    public function verifyKey(string $secret, string $key): bool;

    /**
     * @throws UnableToGenerateSecretKey
     */
    public function generateSecretKey(int $length, string $prefix): string;

    /**
     * @throws UnableToGenerateQRCodeData
     */
    public function getQRCodeData(string $company, string $holder, string $secretKey, int $size): string;
}
