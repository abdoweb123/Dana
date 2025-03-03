<?php

namespace App\Http\Middleware;

use App\Functions\ResponseHelper;
use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Illuminate\Http\Request;

class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     */
    protected function redirectTo(Request $request): ?string
    {
        if (request()->is('dashboard') || request()->is('dashboard/*')){
            return $request->expectsJson() ? null : route('dashboard.login');
        }else{
            return $request->expectsJson() ? null : route('login.index');
        }
    }
}
