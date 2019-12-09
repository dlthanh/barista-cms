<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Http\Requests\UserRequest;
use Illuminate\Support\Facades\Session;

class UserController extends Controller
{
    public function __construct()
    {

    }

    public function index()
    {
        $users = User::all();
        return view('user.index', ['users' => $users]);
    }

    public function getCreate()
    {
        return view('user.create');
    }

    public function postCreate(UserRequest $request)
    {
        $user = [
            'name' => $request->name,
            'fullname' => $request->fullname,
            'email' => $request->email,
            'password' => bcrypt($request->password),
            'permission' => $request->permission
        ];
        User::create($user);
        return redirect()->route('user.index')->with('message', 'Thêm mới người dùng thành công');
    }

    public function getUpdate($id)
    {
        $user = User::find($id);
        return view('user.update', ['user' => $user]);
    }

    public function postUpdate($id, Request $request)
    {
        $password = $request->password;
        if(User::find($id)->password == $password) {
            $user = [
                'name' => $request->name,
                'fullname' => $request->fullname,
                'email' => $request->email,
                'permission' => $request->permission
            ];
        } else {
            $user = [
                'name' => $request->name,
                'fullname' => $request->fullname,
                'email' => $request->email,
                'password' => bcrypt($password),
                'permission' => $request->permission
            ];
        }
        $isUpdated = User::find($id)->update($user);
        if($isUpdated) {
            return redirect()->route('user.getUpdate', $id)
                ->with('message', 'Cập nhật người dùng thành công')
                ->with('user', $user);
        }
    }
}
