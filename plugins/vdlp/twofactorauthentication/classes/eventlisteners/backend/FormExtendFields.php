<?php

declare(strict_types=1);

namespace Vdlp\TwoFactorAuthentication\Classes\EventListeners\Backend;

use Backend\Classes\AuthManager;
use Backend\Controllers\Users;
use Backend\Models\User;
use Backend\Widgets\Form;

final class FormExtendFields
{
    public function handle(Form $form): void
    {
        if ($form->model instanceof User && $form->getController() instanceof Users) {
            $form->addTabFields([
                '2fa_setup_button' => [
                    'label' => '',
                    'type' => 'partial',
                    'context' => [
                        'myaccount',
                    ],
                ],
            ]);
        }

        $isAllowedToDisable2FA = false;
        $authManager = AuthManager::instance();

        if ($authManager->check() && $authManager->getUser() instanceof User) {
            $isAllowedToDisable2FA = $authManager->getUser()->isSuperUser()
                && !empty($authManager->getUser()->getAttribute('vdlp-twofactorauthentication_google2fa_secret'));
        }

        if (
            $form->model instanceof User
            && $isAllowedToDisable2FA
            && !empty($form->model->getAttribute('vdlp-twofactorauthentication_google2fa_secret'))
            && $form->getController() instanceof Users
            && $form->model->getKey() !== $authManager->getUser()->getKey()
        ) {
            $form->addSecondaryTabFields([
                '2fa_disable_button' => [
                    'label' => '',
                    'type' => 'partial',
                    'context' => [
                        'update',
                    ],
                ],
            ]);
        }
    }
}
