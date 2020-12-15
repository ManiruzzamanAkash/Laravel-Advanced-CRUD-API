<?php

namespace App\Http\Middleware;

use App\Repositories\ResponseRepository;
use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Http\JsonResponse;

class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string|null
     */
    protected function redirectTo($request)
    {
        if (!$request->expectsJson()) {
            return ResponseRepository::ResponseError(null, 'Un Authenticated Access', JsonResponse::HTTP_UNAUTHORIZED);
        }
    }

    /**
     * Handle an unauthenticated user.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  array  $guards
     * @return void
     *
     * @throws \Illuminate\Auth\AuthenticationException
     */
    protected function unauthenticated($request, array $guards)
    {
        throw new HttpResponseException(
            ResponseRepository::ResponseError(null,  'Un Authenticated Access', JsonResponse::HTTP_UNAUTHORIZED)
        );
    }
}
