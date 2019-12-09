@extends('layouts.header')

@section('login')
    <div class="login">
        <div class="login-wrapper">
            <img class="login-logo" src="{{asset('')}}images/logo.svg" alt="">

            <form method="POST" action="{{ route('login') }}" class="ui form login-form">
                @csrf
                <div class="field">
                    <label>Tên đăng nhập</label>
                    <input type="text" name="name" placeholder="Tên đăng nhập" required value="{{old('name')}}">
                </div>
                <div class="field">
                    <label>Mật khẩu</label>
                    <input type="password" name="password" placeholder="Mật khẩu" required value="{{old('password')}}">
                </div>
                <div class="field">
                    <div class="ui checkbox">
                        <input type="checkbox" name="remember" id="remember" tabindex="0" class="hidden" {{old('remember') ? 'checked' : ''}}>
                        <label for="remember">Ghi nhớ đăng nhập</label>
                    </div>
                </div>
                <button class="ui button" type="submit">Đăng nhập</button>
            </form>
        </div>
    </div>
@endsection