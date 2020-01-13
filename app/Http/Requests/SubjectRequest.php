<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SubjectRequest extends FormRequest
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
            'thumbnail' => 'required',
            'session' => 'numeric',
            'time' => 'numeric',
            'short_description' => 'max:190',
            'isHome' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'thumbnail.required' => 'Chưa chọn ảnh đại diện',
            'session.numeric' => 'Số buổi học là số tự nhiên',
            'time.numeric' => 'Thời gian học / 1 buổi là số tự nhiên',
            'short_description.max' => 'Mô tả ngắn tối đa 190 ký tự',
            'isHome.required' => 'Chọn hiển thị trang chủ'
        ];
    }
}
