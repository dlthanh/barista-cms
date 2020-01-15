<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Http\Requests\UserRequest;
use App\Http\Requests\UserUpdateRequest;
use Illuminate\Support\Facades\Session;
use App\Models\Article;

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
        if(!isset($user)) {
            return redirect()->route('user.index')->with('message', 'Không tìm thấy người dùng có ID = '. $id);
        }
        return view('user.update', ['user' => $user]);
    }

    public function postUpdate($id, UserUpdateRequest $request)
    {
        $data = User::find($id);
        if(!isset($data)) {
            return redirect()->route('user.index')->with('message', 'Không tìm thấy người dùng có ID = '. $id);
        }

        $password = $request->password;
        if($data->password == $password) {
            $user = [
                'permission' => $request->permission
            ];
        } else {
            $user = [
                'password' => bcrypt($password),
                'permission' => $request->permission
            ];
        }
        $isUpdated = $data->update($user);

        if($isUpdated) {
            return redirect()->route('user.getUpdate', $id)
                ->with('message', 'Cập nhật người dùng thành công')
                ->with('user', $user);
        }
    }

    public function delete($id)
    {
        $user = User::find($id);
        if(!isset($user)) {
            return redirect()->route('user.index')->with('message', 'Không tìm thấy người dùng có ID = '. $id);
        }
        $user->delete();
        return redirect()->route('user.index')->with('message', 'Xóa thành công người dùng '. $user->name);
    }

    public function lock($id)
    {
        $user = User::find($id);
        if(!isset($user)) {
            return redirect()->route('user.index')->with('message', 'Không tìm thấy người dùng có ID = '. $id);
        }
        $isUpdated = $user->update(['permission' => 3]);

        if($isUpdated) {
            return redirect()->route('user.index')
                ->with('message', 'Khóa người dùng ' . $user->name . ' thành công');
        }
    }

    public function unlock($id)
    {
        $user = User::find($id);
        if(!isset($user)) {
            return redirect()->route('user.index')->with('message', 'Không tìm thấy người dùng có ID = '. $id);
        }
        $isUpdated = $user->update(['permission' => 2]);

        if($isUpdated) {
            return redirect()->route('user.index')
                ->with('message', 'Mở khóa người dùng ' . $user->name . ' thành công');
        }
    }
}
