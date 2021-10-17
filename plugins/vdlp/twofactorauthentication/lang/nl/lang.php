<?php

declare(strict_types=1);

return [
    'plugin' => [
        'name' => 'Tweestapsverificatie',
        'description' => 'Voegt extra beveiliging toe aan October CMS backend.',
    ],
    '2fa' => [
        '2fa_required_comment' => 'Om je account te kunnen gebruiken moet je tweestapsverificatie instellen.',
        'invalid_authentication_code' => 'Ongeldige authenticatiecode opgegeven, probeer het opnieuw.',
        'enable_2fa' => 'Tweestapsverificatie instellen',
        'disable_2fa' => 'Tweestapsverificatie uitzetten',
        'disable_2fa_confirm' => 'Weet je zeker dat je tweestapsverificatie wilt uitzetten voor deze gebruiker?',
        'disable_2fa_not_allowed' => 'Tweestapsverificatie instellen voor deze gebruiker is niet toegestaan.',
        'disable_2fa_success' => 'Tweestapsverificatie is niet ingesteld voor deze gebruiker.',
        'account_enabled' => 'Tweestapsverificatie is ingesteld voor je account.',
        'account_disabled' => 'Tweestapsverificatie is niet ingesteld voor je account.',
        'verify_authentication_code' => 'Verifieer',
        'authentication_code' => 'Authenticatiecode',
        'enter_code' => 'Voer authenticatie code in',
    ],
    'users' => [
        'scan_qr_code' => 'Scan de QR-code of gebruik de geheime sleutel voor je authenticator-app.',
        'supported_applications' => 'Ondersteunde applicaties',
        'secret_key_qr' => 'QR-code',
        'secret_key_text' => 'Geheime sleutel',
        'authentication_code_comment' => 'Authenticatiecode',
        'enable_two_factor_authentication' => 'Aanzetten',
        'disable_two_factor_authentication' => 'Uitzetten',
        'two_factor_authentication' => 'Tweestapsverificatie',
    ],
];
