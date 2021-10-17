<?php

declare(strict_types=1);

return [
    'plugin' => [
        'name' => 'Two Factor Authentication',
        'description' => 'Ajoute une couche de sécurité supplémentaire au backend de October CMS.',
    ],
    '2fa' => [
        '2fa_required_comment' => 'Pour utiliser votre compte, vous devez le configurer avec l\'Authentification à deux Facteurs.',
        'invalid_authentication_code' => 'Le code d\'authentification fourni n\' pas valide, essayez encore.',
        'enable_2fa' => 'Configurer l\'Authentification à deux Facteurs',
        'disable_2fa' => 'Désactiver l\'Authentication à deux Facteurs',
        'disable_2fa_confirm' => 'Etes-vous sûr de vouloir désactiver l\'Authentification à deux Facteurs pour cet utilisteur ?',
        'disable_2fa_not_allowed' => 'Vous n\'êtes pas autorisé à désactiver l\'Authentification à deux Facteurs pour cet utilisateur.',
        'disable_2fa_success' => 'L\'Authentification à deux Facteurs a été désactivée pour cet utilisateur.',
        'account_enabled' => 'L\'Authentification à deux Facteurs est activée pour votre compte.',
        'account_disabled' => 'L\'Authentification à deux Facteurs n\'est pas activée pour votre compte.',
        'verify_authentication_code' => 'Vérifier',
        'authentication_code' => 'Code d\'authentication',
        'enter_code' => 'Entrez code d\'authentification',
    ],
    'users' => [
        'scan_qr_code' => 'Scannez le code QR ou utilisez la clé secrète dans votre application d\'autentification.',
        'supported_applications' => 'Applications supportées',
        'secret_key_qr' => 'Code QR',
        'secret_key_text' => 'Clé secrète',
        'authentication_code_comment' => 'Code d\'authentication',
        'enable_two_factor_authentication' => 'Activer',
        'disable_two_factor_authentication' => 'Désactiver',
        'two_factor_authentication' => 'Authentification à deux Facteurs',
    ],
];
