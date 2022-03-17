<?php

namespace Tests\Unit;

use App\Models\Product;
use App\Models\User;
use App\Repositories\ProductRepository;
use Illuminate\Support\Facades\Auth;
use Tests\TestCase;

class ProductTest extends TestCase
{
    /**
     * Check if public profile api is accessible or not.
     *
     * @return void
     */
    public function test_can_access_public_product_api()
    {
        $response = $this->get('/api/products/view/all');

        $response->assertStatus(200);
    }

    /**
     * Check if product list is private. only user can see his products.
     *
     * @return void
     */
    public function test_can_not_access_private_product_api()
    {
        $response = $this->get('/api/products');

        $response->assertStatus(401);
    }

    /**
     * Test if product is creatable.
     *
     * @return void
     */
    public function test_can_create_product()
    {
        // Login the user first.
        Auth::login(User::where('email', 'admin@example.com')->first());
        $productRepository = new ProductRepository();

        // First count total number of products
        $totalProducts = Product::get('id')->count();

        $product = $productRepository->create([
            'title'       => 'Hello',
            'price'       => 100,
            'user_id'     => 1,
            'description' => 'Hello',
        ]);

        $this->assertDatabaseCount('products', $totalProducts + 1);

        // Delete the product as need to keep it in database for other tests
        $product = Product::where('title', 'Hello')->where('price', 100)->first();
        $product->delete();
    }
}
