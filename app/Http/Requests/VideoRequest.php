<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class VideoRequest extends FormRequest
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
            'title' => 'required',
            'embed' => 'required',
            'description' => 'required|max:150'
        ];
    }

    public function messages()
    {
        return [
            'title.required' => 'Tiêu đề là trường bắt buộc',
            'embed.required' => 'Đường dẫn là trường bắt buộc',
            'description.required' => 'Mô tả là trường bắt buộc',
            'description.max' => 'Trường mô tả tối đa 150 ký tự'
        ];
    }
}
