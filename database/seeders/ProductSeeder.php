<?php

namespace Database\Seeders;

use App\Models\Product;
use Carbon\Carbon;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Product::query()->truncate();
        $data = [
            [
                'title' => 'Product 1',
                'price' => 2000,
                'description' => 'Product 1 Description',
                'image' => null,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'title' => 'Product 2',
                'price' => 5000,
                'description' => 'Product 2 Description',
                'image' => null,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'title' => 'Product 3',
                'price' => 77000,
                'description' => 'Product 3 Description',
                'image' => null,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ]
        ];
        Product::insert($data);

        // Testing Dummy Products
        Product::factory(1000)->create();
    }
}
