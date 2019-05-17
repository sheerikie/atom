<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithoutMiddleware;
use App\User;
use Auth;


use Illuminate\Foundation\Testing\RefreshDatabase;

class LoginTest extends TestCase
{


    /**
     * A basic test example.
     *
     * @return void
     */
    public function test_unauthorized_User_LoginTest()
    {
      
            $user = factory(User::class)->make();
            $response = $this->actingAs($user)->get('/login');
            $response->assertRedirect('/home');
        
    }


    public function test_user_can_login_with_correct_credentials()
    {
        $user = factory(User::class)->create([
            'password' => bcrypt($password = 'atom-challenge'),
        ]);
        
        $response = $this->withoutMiddleware()->post('/login', [
            'email' => $user->email,
            'password' => $password,
        ]);
        
        $this->assertTrue(Auth::check());
    }
}
