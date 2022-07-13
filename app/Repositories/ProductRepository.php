<?php

namespace App\Repositories;

use Illuminate\Support\Str;
use App\Helpers\UploadHelper;
use App\Interfaces\CrudInterface;
use App\Models\Product;
use App\Models\User;
use Illuminate\Contracts\Pagination\Paginator;
use Illuminate\Support\Facades\Auth;

class ProductRepository implements CrudInterface
{
    /**
     * Authenticated User Instance.
     *
     * @var User
     */
    public User | null $user;

    /**
     * Constructor.
     */
    public function __construct()
    {
        $this->user = Auth::guard()->user();
    }

    /**
     * Get All Products.
     *
     * @return collections Array of Product Collection
     */
    public function getAll(): Paginator
    {
        return $this->user->products()
            ->orderBy('id', 'desc')
            ->with('user')
            ->paginate(10);
    }

    /**
     * Get Paginated Product Data.
     *
     * @param int $pageNo
     * @return collections Array of Product Collection
     */
    public function getPaginatedData($perPage): Paginator
    {
        $perPage = isset($perPage) ? intval($perPage) : 12;
        return Product::orderBy('id', 'desc')
            ->with('user')
            ->paginate($perPage);
    }

    /**
     * Get Searchable Product Data with Pagination.
     *
     * @param int $pageNo
     * @return collections Array of Product Collection
     */
    public function searchProduct($keyword, $perPage): Paginator
    {
        $perPage = isset($perPage) ? intval($perPage) : 10;

        return Product::where('title', 'like', '%' . $keyword . '%')
            ->orWhere('description', 'like', '%' . $keyword . '%')
            ->orWhere('price', 'like', '%' . $keyword . '%')
            ->orderBy('id', 'desc')
            ->with('user')
            ->paginate($perPage);
    }

    /**
     * Create New Product.
     *
     * @param array $data
     * @return object Product Object
     */
    public function create(array $data): Product
    {
        $titleShort      = Str::slug(substr($data['title'], 0, 20));
        $data['user_id'] = $this->user->id;

        if (!empty($data['image'])) {
            $data['image'] = UploadHelper::upload('image', $data['image'], $titleShort . '-' . time(), 'images/products');
        }

        return Product::create($data);
    }

    /**
     * Delete Product.
     *
     * @param int $id
     * @return boolean true if deleted otherwise false
     */
    public function delete(int $id): bool
    {
        $product = Product::find($id);
        if (empty($product)) {
            return false;
        }

        UploadHelper::deleteFile('images/products/' . $product->image);
        $product->delete($product);
        return true;
    }

    /**
     * Get Product Detail By ID.
     *
     * @param int $id
     * @return void
     */
    public function getByID(int $id): Product|null
    {
        return Product::with('user')->find($id);
    }

    /**
     * Update Product By ID.
     *
     * @param int $id
     * @param array $data
     * @return object Updated Product Object
     */
    public function update(int $id, array $data): Product|null
    {
        $product = Product::find($id);
        if (!empty($data['image'])) {
            $titleShort = Str::slug(substr($data['title'], 0, 20));
            $data['image'] = UploadHelper::update('image', $data['image'], $titleShort . '-' . time(), 'images/products', $product->image);
        } else {
            $data['image'] = $product->image;
        }

        if (is_null($product)) {
            return null;
        }

        // If everything is OK, then update.
        $product->update($data);

        // Finally return the updated product.
        return $this->getByID($product->id);
    }
}
