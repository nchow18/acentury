<?php

declare(strict_types=1);

namespace Vdlp\TwoFactorAuthentication\Classes\EventSubscribers;

use October\Rain\Events\Dispatcher;
use Vdlp\TwoFactorAuthentication\Classes\Contracts\EventSubscriber;
use Vdlp\TwoFactorAuthentication\Classes\EventListeners\Backend\FormExtendFields;
use Vdlp\TwoFactorAuthentication\Classes\EventListeners\Backend\PageBeforeDisplay;

final class BackendEventSubscriber implements EventSubscriber
{
    public function subscribe(Dispatcher $dispatcher): void
    {
        $dispatcher->listen('backend.form.extendFields', FormExtendFields::class);
        $dispatcher->listen('backend.page.beforeDisplay', PageBeforeDisplay::class);
    }
}
