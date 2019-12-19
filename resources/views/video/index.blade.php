@extends('layouts.master')

@section('title', 'Danh sách video')

@section('main-title', 'Quản lý Video')

@section('btn-group')
    <a href="{{route('video.getCreate')}}" class="ui green button">Thêm video</a>
@endsection

@section('content')
    @if(session('message'))
        <div class="main-message ui green message">{{session('message')}}</div>
    @endif

    <table class="ui celled table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Ảnh đại diện</th>
                <th>Tiêu đề</th>
                <th>Mô tả</th>
                <th>Đường dẫn</th>
                <th>Người tạo</th>
                <th colspan="2">Hành động</th>
            </tr>
        </thead>
        <tbody>
        @foreach($videos as $video)
            <tr>
                <td class="middle aligned">{{$video->id}}</td>
                <td class="middle aligned"><img src="{{$video->thumbnail}}" alt="" width="80"></td>
                <td class="middle aligned">{{$video->title}}</td>
                <td class="middle aligned">{{$video->description}}</td>
                <td class="middle aligned">
                    <a href="https://www.youtube.com/watch?v={{$video->embed}}" target="_blank">https://www.youtube.com/watch?v={{$video->embed}}</a>
                </td>
                <td class="middle aligned">{{$video->user->name}}</td>
                <td class="middle aligned">
                    <a href="{{route('video.getUpdate', $video->id)}}">Sửa</a>
                </td>
                <td class="middle aligned">
                    <a href="{{route('video.delete', $video->id)}}" class="delete-btn">Xóa</a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
@endsection