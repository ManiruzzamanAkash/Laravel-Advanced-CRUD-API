<?php

namespace Tests\Unit;

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Tests\TestCase;

class LoginTest extends TestCase
{
    /**
     * A basic unit test example.
     *
     * @return void
     */
    public function test_is_admin_login_working()
    {
        Auth::login(User::where('email', 'admin@example.com')->first());

        // check if user is logged in
        $this->assertTrue(Auth::check());
    }
}
