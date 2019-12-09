<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserUpdateRequest extends FormRequest
{
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
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'password' => 'required|min:8',
            'repassword' => 'required|same:password',
            'permission' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'password.required' => 'Mật khẩu là trường bắt buộc',
            'password.min' => 'Mật khẩu phải có ít nhất 8 ký tự',
            'repassword.required' => 'Xác nhận mật khẩu là trường bắt buộc',
            'repassword.same' => 'Mật khẩu và Xác nhận mật khẩu không trùng khớp',
            'permission.required' => 'Phân quyền là trường bắt buộc'
        ];
    }
}
