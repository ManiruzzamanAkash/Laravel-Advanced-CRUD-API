<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->delete();
        $data = [
            'name' => 'Maniruzzaman Akash',
            'email' => 'admin@example.com',
            'password' => Hash::make('123456')
        ];
        User::create($data);

        // Testing Dummy User
        User::factory(20)->create();
    }
}
