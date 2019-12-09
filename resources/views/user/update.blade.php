@extends('layouts.master')

@section('main-title', 'Thêm mới người dùng')

@section('content')
    @if(session('message'))
        <div class="main-message ui green message">{{session('message')}}</div>
    @endif

    <form action="{{route('user.postUpdate', $user->id)}}" method="POST" class="ui form" style="margin-bottom: 30px;">
        @csrf

        <div class="two fields">
            <div class="required field">
                <label>Tên đăng nhập</label>
                <input type="text" name="name" placeholder="Tên đăng nhập" required value="{{old('name', isset($user) ? $user->name : null)}}" disabled>
            </div>

            <div class="required field">
                <label>Tên đầy đủ</label>
                <input type="text" name="fullname" placeholder="Họ và tên" required value="{{old('fullname', isset($user) ? $user->fullname : null)}}" disabled>
            </div>

            <div class="required field">
                <label>Email</label>
                <input type="email" name="email" placeholder="Email" required value="{{old('email', isset($user) ? $user->email : null)}}" disabled>
            </div>
        </div>

        <div class="two fields">
            <div class="required field">
                <label>Mật khẩu</label>
                <input type="password" name="password" placeholder="Mật khẩu" required value="{{old('password', isset($user) ? $user->password : null)}}">
            </div>

            <div class="required field">
                <label>Nhập lại mật khẩu</label>
                <input type="password" name="repassword" placeholder="Nhập lại mật khẩu" required value="{{old('repassword', isset($user) ? $user->password : null)}}">
            </div>

            <div class="required field">
                <label>Phân quyền</label>

                <div class="field">
                    <div class="ui radio checkbox">
                        <input type="radio" name="permission" id="r1" value="1" {{$user->permission == 1 ? 'checked' : ''}}>
                        <label for="r1">Adminstrator</label>
                    </div>
                </div>
                <div class="field">
                    <div class="ui radio checkbox">
                        <input type="radio" name="permission" id="r2" value="2"{{$user->permission == 2 ? 'checked' : ''}}>
                        <label for="r2">Editor</label>
                    </div>
                </div>
            </div>
        </div>

        <button type="submit" class="ui green button">Xác nhận</button>
    </form>

    @if(count($errors) > 0)
        <ul class="user-form--error">
            @foreach($errors->all() as $error)
                <li class="ui red message">{!! $error !!}</li>
            @endforeach
        </ul>
    @endif
@endsection