<?php

declare(strict_types=1);

namespace Vdlp\TwoFactorAuthentication\Classes;

use Backend\Models\User;
use Illuminate\Http\RedirectResponse;
use LogicException;

final class InterceptionValidationResult
{
    private ?RedirectResponse $redirectResponse;
    private ?User $user;
    private bool $valid;
    private ?string $reason;

    public function __construct(?RedirectResponse $redirectResponse, ?User $user, bool $valid, ?string $reason = null)
    {
        $this->redirectResponse = $redirectResponse;
        $this->user = $user;
        $this->valid = $valid;
        $this->reason = $reason;
    }

    public static function createValid(User $user): self
    {
        return new self(null, $user, true);
    }

    public static function createInvalid(RedirectResponse $redirectResponse, ?string $reason = null): self
    {
        return new self($redirectResponse, null, false, $reason);
    }

    /**
     * @throws LogicException
     */
    public function getRedirectResponse(): RedirectResponse
    {
        if ($this->redirectResponse === null) {
            throw new LogicException('Not allowed in this context.');
        }

        return $this->redirectResponse;
    }

    /**
     * @throws LogicException
     */
    public function getUser(): User
    {
        if ($this->user === null) {
            throw new LogicException('Not allowed in this context.');
        }

        return $this->user;
    }

    public function isValid(): bool
    {
        return $this->valid;
    }

    public function getReason(): ?string
    {
        return $this->reason;
    }
}
