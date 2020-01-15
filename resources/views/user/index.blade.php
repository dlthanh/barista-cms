@extends('layouts.master')

@section('title', 'Danh sách người dùng')

@section('main-title', 'Quản lý người dùng')

@section('btn-group')
    <a href="{{route('user.getCreate')}}" class="ui green button" id="addUser">Thêm người dùng</a>
@endsection

@section('content')
    @if(session('message'))
        <div class="main-message ui green message">{{session('message')}}</div>
    @endif

    <table class="ui celled table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Tên đăng nhập</th>
                <th>Tên đầy đủ</th>
                <th>Email</th>
                <th>Phân quyền</th>
                <th colspan="3">Hành động</th>
            </tr>
        </thead>
        <tbody>
        @foreach($users as $user)
            <tr>
                <td>{{$user->id}}</td>
                <td>{{$user->name}}</td>
                <td>{{$user->fullname}}</td>
                <td>{{$user->email}}</td>
                <td>
                    @if($user->permission == 0)
                        Người sở hữu
                    @elseif($user->permission == 1)
                        Administrator
                    @elseif($user->permission == 2)
                        Editor
                    @else
                        Đã khóa
                    @endif
                </td>
                <td>
                    @if(auth()->user()->permission == 0 || $user->permission !== 0)
                        <a href="{{route('user.getUpdate', $user->id)}}">Sửa</a>
                    @endif
                </td>
                <td>
                    @if(auth()->user()->permission == 0 || $user->permission !== 0)
                        @if($user->permission == 3)
                            <a href="{{route('user.unlock', $user->id)}}" class="unlock-btn">Mở khóa</a>
                        @else
                            <a href="{{route('user.lock', $user->id)}}" class="lock-btn">Khóa</a>
                        @endif
                    @endif
                </td>
                <td>
                    @if(auth()->user()->permission == 0 || $user->permission !== 0)
                        <a href="{{route('user.delete', $user->id)}}" class="delete-btn delete-user">Xóa</a>
                    @endif
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
@endsection