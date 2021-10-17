<?php

declare(strict_types=1);

namespace Vdlp\TwoFactorAuthentication\Classes\Contracts;

use October\Rain\Events\Dispatcher;

interface EventSubscriber
{
    public function subscribe(Dispatcher $dispatcher): void;
}
