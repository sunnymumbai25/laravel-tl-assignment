<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Exceptions\ThrottleRequestsException;
use Illuminate\Support\Facades\RateLimiter;

class CustomThrottleMiddleware
{
    public function handle($request, Closure $next)
    {
        $key = 'transcript:' . $request->ip();

        if (RateLimiter::tooManyAttempts($key, 8)) {
            return response()->json(['error' => 'Too Many Requests....'], 429);
        }

        RateLimiter::hit($key);
        return $next($request);
    }
}
