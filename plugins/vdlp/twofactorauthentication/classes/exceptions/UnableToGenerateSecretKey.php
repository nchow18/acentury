<?php

declare(strict_types=1);

namespace Vdlp\TwoFactorAuthentication\Classes\Exceptions;

use RuntimeException;

final class UnableToGenerateSecretKey extends RuntimeException
{
}
