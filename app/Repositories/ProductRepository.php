<?php

namespace App\Repositories;

use Illuminate\Support\Str;
use App\Helpers\UploadHelper;
use App\Interfaces\CrudInterface;
use App\Models\Product;
use Illuminate\Support\Facades\Auth;

class ProductRepository implements CrudInterface{

    /**
     * Get All Products
     *
     * @return collections Array of Product Collection
     */
    public function getAll(){
        $user = Auth::guard()->user();
        return $user->products()
        ->orderBy('id', 'desc')
        ->with('user')
        ->paginate(10);
    }

    /**
     * Get Paginated Product Data
     *
     * @param int $pageNo
     * @return collections Array of Product Collection
     */
    public function getPaginatedData($perPage){
        $perPage = isset($perPage) ? $perPage : 12;
        return Product::orderBy('id', 'desc')
        ->with('user')
        ->paginate($perPage);
    }

    /**
     * Get Searchable Product Data with Pagination
     *
     * @param int $pageNo
     * @return collections Array of Product Collection
     */
    public function searchProduct($keyword, $perPage){
        $perPage = isset($perPage) ? $perPage : 10;
        return Product::where('title', 'like', '%'.$keyword.'%')
        ->orWhere('description', 'like', '%'.$keyword.'%')
        ->orWhere('price', 'like', '%'.$keyword.'%')
        ->orderBy('id', 'desc')
        ->with('user')
        ->paginate($perPage);
    }
    
    /**
     * Create New Product
     *
     * @param array $data
     * @return object Product Object
     */
    public function create(array $data){
        $titleShort = Str::slug(substr($data['title'], 0, 20));
        $user = Auth::guard()->user();
        $data['user_id'] =  $user->id;       
        if (!empty($data['image'])) {
            $data['image'] = UploadHelper::upload('image', $data['image'], $titleShort.'-'. time(), 'images/products');  
        }      
        $product = Product::create($data);
        return $product;
    }

    /**
     * Delete Product
     *
     * @param int $id
     * @return boolean true if deleted otherwise false
     */
    public function delete($id){
        $product = Product::find($id);
        if (is_null($product))
            return false;

        UploadHelper::deleteFile('images/products/'.$product->image);
        $product->delete($product);
        return true;
    }

    /**
     * Get Product Detail By ID
     *
     * @param int $id
     * @return void
     */
    public function getByID($id){
        return Product::with('user')->find($id);
    }

    /**
     * Update Product By ID
     *
     * @param int $id
     * @param array $data
     * @return object Updated Product Object
     */
    public function update($id, array $data){
        $product = Product::find($id);
        if(!empty($data['image'])){
            $titleShort = Str::slug(substr($data['title'], 0, 20));
            $data['image'] = UploadHelper::update('image', $data['image'], $titleShort.'-'. time(), 'images/products', $product->image);           
        }else{
            $data['image'] = $product->image;
        }
        if (is_null($product))
            return null;

        $product->update($data);
        return $this->getByID($product->id);
    }
}
