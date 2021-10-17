<?php

declare(strict_types=1);

namespace Vdlp\TwoFactorAuthentication\Updates;

use Illuminate\Database\Schema\Blueprint;
use October\Rain\Database\Updates\Migration;
use October\Rain\Support\Facades\Schema;

class AddGoogle2FaSecretToBackendUsersTable extends Migration
{
    public function up(): void
    {
        Schema::table('backend_users', static function (Blueprint $table): void {
            $table->text('vdlp-twofactorauthentication_google2fa_secret')
                ->after('password')
                ->nullable();
        });
    }

    public function down(): void
    {
        Schema::table('backend_users', static function (Blueprint $table): void {
            $table->dropColumn('vdlp-twofactorauthentication_google2fa_secret');
        });
    }
}
