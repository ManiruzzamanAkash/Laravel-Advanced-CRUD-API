<?php

namespace App\Http\Requests;

class ProductRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules(): array
    {
        return [
            'title'       => 'required|max:255',
            'description' => 'nullable|max:5000',
            'price'       => 'required|numeric',
            'image'       => 'nullable|image|mimes:png,jpg,jpeg,gif,webp|max:2048',
        ];
    }

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * @return array
     * Custom validation message
     */
    public function messages(): array
    {
        return [
            'title.required'  => 'Please give product title',
            'title.max'       => 'Please give product title maximum of 255 characters',
            'description.max' => 'Please give product description maximum of 5000 characters',
            'price.required'  => 'Please give product price',
            'price.numeric'   => 'Please give a numeric product price',
            'image.image'     => 'Please give a valid product image',
            'image.max'       => 'Product image max 2MB is allowed',
        ];
    }
}
