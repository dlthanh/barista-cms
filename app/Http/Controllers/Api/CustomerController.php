<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Customer;

class CustomerController extends Controller
{
    public function post(Request $request)
    {
        Customer::create($request->all());
        return response()->json(['message' => 'Đã gửi thông tin thành công']);
    }
}
