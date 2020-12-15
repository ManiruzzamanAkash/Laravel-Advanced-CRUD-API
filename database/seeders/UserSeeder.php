<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
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
        User::query()->truncate();
        $data = [
            'name' => 'Maniruzzaman Akash',
            'email' => 'manirujjamanakash@gmail.com',
            'password' => Hash::make('123456')
        ];
        User::create($data);

        // Testing Dummy User
        User::factory(20)->create();
    }
}
