<?php

declare(strict_types=1);

return [

    /*
    |--------------------------------------------------------------------------
    | Require Two Factor Authentication for all super users (recommended).
    |--------------------------------------------------------------------------
    |
    | All super users are required to set up Two Factor Authentication upon
    | next login.
    |
    */

    'force_all_super_users' => false,

    /*
    |--------------------------------------------------------------------------
    | Require Two Factor Authentication for all administrators.
    |--------------------------------------------------------------------------
    |
    | All administrators (super users included) are required to set up Two
    | Factor Authentication upon next login.
    |
    */

    'force_all_users' => false,

    /*
    |--------------------------------------------------------------------------
    | Interception Time To Live
    |--------------------------------------------------------------------------
    |
    | The session lifetime for the login interception. The user has a certain
    | amount of time to set up or verify the 2fa code. If the time expires,
    | the session will be cleared an the user will be redirected back to the
    | backend login page.
    |
    */

    'interception_ttl' => 600,

];
