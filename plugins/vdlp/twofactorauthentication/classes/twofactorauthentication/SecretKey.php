<?php

declare(strict_types=1);

namespace Vdlp\TwoFactorAuthentication\Classes\TwoFactorAuthentication;

use Illuminate\Contracts\Encryption\DecryptException;
use Illuminate\Contracts\Encryption\Encrypter;
use Illuminate\Contracts\Encryption\EncryptException;

final class SecretKey
{
    private Encrypter $encrypter;

    public function __construct(Encrypter $encrypter)
    {
        $this->encrypter = $encrypter;
    }

    /**
     * @throws EncryptException
     */
    public function encrypt(string $secretKey): string
    {
        return $this->encrypter->encrypt($secretKey);
    }

    /**
     * @throws DecryptException
     */
    public function decrypt(string $encryptedSecretKey): string
    {
        return $this->encrypter->decrypt($encryptedSecretKey);
    }
}
