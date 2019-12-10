@extends('layouts.master')

@section('title', 'Thêm mới video')

@section('main-title', 'Thêm mới video')

@section('content')
    @if(count($errors) > 0)
        <ul class="video-form--error">
            @foreach($errors->all() as $error)
                <li class="ui red message">{!! $error !!}</li>
            @endforeach
        </ul>
    @endif

    <div class="notice">
        <p><strong>* Đường dẫn: </strong>https://www.youtube.com/watch?v=<span class="ui red text">kBe0hk5a9s8</span> (chỉ nhập phần màu đỏ)</p>
        <p><strong>* Mô tả: </strong>Tối đa 150 ký tự</p>
        <p><strong>* Ảnh đại diện: </strong>Tự động lấy ảnh đại diện từ youtube</p>
    </div>

    <form action="{{route('video.postCreate')}}" method="POST" class="ui form">
        @csrf

        <div class="two fields">
            <div class="required field">
                <label>Tiêu đề</label>
                <input type="text" name="title" placeholder="Tiêu đề" required value="{{old('title')}}">
            </div>

            <div class="required field">
                <label>Đường dẫn</label>
                <input type="text" name="embed" placeholder="Đường dẫn" required value="{{old('embed')}}">
            </div>
        </div>

        <div class="required field">
            <label>Mô tả</label>
            <textarea name="description" required>{{old('description')}}</textarea>
        </div>

        <button type="submit" class="ui green button">Xác nhận</button>
    </form>
@endsection