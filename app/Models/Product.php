<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $fillable = [
        'title',
        'description',
        'price',
        'image',
        'user_id'
    ];
    protected $appends = ['image_url'];


    /**
     * User
     * 
     * Get User Uploaded By Product
     *
     * @return array Products
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function  getImageUrlAttribute(){
        return url('')."/images/products/".$this->image;
    }
}
