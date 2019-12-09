<?php

namespace App\Http\Requests;

use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
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
            'name' => 'required|unique:users,name',
            'fullname' => 'required',
            'email' => 'required|unique:users,email',
            'password' => 'required|min:8',
            'repassword' => 'required|same:password',
            'permission' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'Tên đăng nhập là trường bắt buộc',
            'name.unique' => 'Tên đăng nhập đã tồn tại',
            'fullname.required' => 'Tên đầy đủ là trường bắt buộc',
            'email.required' => 'Email là trường bắt buộc',
            'email.unique' => 'Email đã tồn tại',
            'password.required' => 'Mật khẩu là trường bắt buộc',
            'password.min' => 'Mật khẩu phải có ít nhất 8 ký tự',
            'repassword.required' => 'Xác nhận mật khẩu là trường bắt buộc',
            'repassword.same' => 'Mật khẩu và Xác nhận mật khẩu không trùng khớp',
            'permission.required' => 'Phân quyền là trường bắt buộc'
        ];
    }
}
