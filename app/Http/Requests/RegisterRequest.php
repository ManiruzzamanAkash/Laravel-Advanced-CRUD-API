<?php

namespace App\Http\Requests;


class RegisterRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules(): array
    {
        return [
            'name'     => 'required|string|max:50',
            'email'    => 'required|max:255|email|unique:users',
            'password' => 'required|confirmed',
        ];
    }

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * @return array
     * Custom validation message
     */
    public function messages()
    {
        return [
            'name.required'     => 'Please give your name',
            'name.max'          => 'Please give your name between 50 characters',
            'email.required'    => 'Please give your email',
            'email.unique'      => 'User already exists by this email, please try with another email.',
            'password.required' => 'Please give your password',
        ];
    }
}
