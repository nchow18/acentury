<?php

declare(strict_types=1);

namespace Vdlp\TwoFactorAuthentication\Classes\TwoFactorAuthentication;

use Backend\Models\BrandSetting;
use Endroid\QrCode\Color\Color;
use Endroid\QrCode\Color\ColorInterface;
use Endroid\QrCode\QrCode;
use Endroid\QrCode\Writer\PngWriter;
use PragmaRX\Google2FA\Google2FA;
use Throwable;
use Vdlp\TwoFactorAuthentication\Classes\Exceptions;

final class GoogleTwoFactorAuthentication implements TwoFactorAuthentication
{
    private Google2FA $google2FA;

    public function __construct(Google2FA $google2FA)
    {
        $this->google2FA = $google2FA;
    }

    public function verifyKey(string $secret, string $key): bool
    {
        try {
            return $this->google2FA->verifyKey($secret, $key);
        } catch (Throwable $e) {
            throw new Exceptions\UnableToVerifyKey($e->getMessage(), 0, $e);
        }
    }

    public function generateSecretKey(int $length, string $prefix): string
    {
        try {
            return $this->google2FA->generateSecretKey($length, $prefix);
        } catch (Throwable $e) {
            throw new Exceptions\UnableToGenerateSecretKey($e->getMessage(), 0, $e);
        }
    }

    public function getQRCodeData(string $company, string $holder, string $secretKey, int $size): string
    {
        try {
            $foregroundColor = $this->getForegroundColor();
        } catch (Throwable $e) {
            $foregroundColor = null;
        }

        try {
            $writer = new PngWriter();

            $data = sprintf(
                'otpauth://totp/%s:%s?%s',
                rawurlencode($company),
                rawurlencode($holder),
                http_build_query(['secret' => $secretKey, 'issuer' => rawurlencode($company)])
            );

            $qrCode = QrCode::create($data);
            $qrCode->setSize($size);

            if ($foregroundColor !== null) {
                $qrCode->setForegroundColor($foregroundColor);
            }

            return $writer->write($qrCode)->getDataUri();
        } catch (Throwable $e) {
            throw new Exceptions\UnableToGenerateQRCodeData($e->getMessage(), 0, $e);
        }
    }

    private function getForegroundColor(): ?ColorInterface
    {
        $brandSettings = new BrandSetting();

        $primaryColor = $brandSettings->get('primary_color', BrandSetting::PRIMARY_COLOR);

        [$red, $green, $blue] = sscanf($primaryColor, '#%02x%02x%02x');

        return new Color($red, $green, $blue);
    }
}
