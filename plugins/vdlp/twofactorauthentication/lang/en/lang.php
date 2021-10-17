<?php

declare(strict_types=1);

return [
    'plugin' => [
        'name' => 'Two Factor Authentication',
        'description' => 'Adds an extra layer of security to the October CMS backend.',
    ],
    '2fa' => [
        '2fa_required_comment' => 'To use your account you have to set up Two Factor Authentication.',
        'invalid_authentication_code' => 'Invalid authentication code provided, try again.',
        'enable_2fa' => 'Set Up Two Factor Authentication',
        'disable_2fa' => 'Disable Two Factor Authentication',
        'disable_2fa_confirm' => 'Are you sure you want to disable Two Factor Authentication for this user?',
        'disable_2fa_not_allowed' => 'You are not allowed to disable Two Factor Authentication for this user.',
        'disable_2fa_success' => 'Two Factor Authentication has been disabled for this user.',
        'account_enabled' => 'Two Factor Authentication is enabled for your account.',
        'account_disabled' => 'Two Factor Authentication is not enabled for your account.',
        'verify_authentication_code' => 'Verify',
        'authentication_code' => 'Authentication code',
        'enter_code' => 'Enter authentication code',
    ],
    'users' => [
        'scan_qr_code' => 'Scan the QR-code or use the secret key for your Authenticator app.',
        'supported_applications' => 'Supported applications',
        'secret_key_qr' => 'QR-code',
        'secret_key_text' => 'Secret key',
        'authentication_code_comment' => 'Authentication code',
        'enable_two_factor_authentication' => 'Enable',
        'disable_two_factor_authentication' => 'Disable',
        'two_factor_authentication' => 'Two Factor Authentication',
    ],
];
