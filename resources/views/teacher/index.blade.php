@extends('layouts.master')

@section('title', 'Danh sách giảng viên')

@section('main-title', 'Quản lý giảng viên')

@section('btn-group')
    <a href="{{route('teacher.getCreate')}}" class="ui green button" id="addUser">Thêm giảng viên</a>
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
                <th>Tên giảng viên</th>
                <th>Quote</th>
                <th colspan="2">Hành động</th>
            </tr>
        </thead>
        <tbody>
        @foreach($teachers as $teacher)
            <tr>
                <td class="middle aligned">{{$teacher->id}}</td>
                <td class="middle aligned">
                    <img src="/uploads/{{$teacher->avatar}}" alt="" width="50">
                </td>
                <td class="middle aligned">{{$teacher->name}}</td>
                <td class="middle aligned">{{$teacher->quote}}</td>
                <td class="middle aligned">
                    <a href="{{route('teacher.getUpdate', $teacher->id)}}">Sửa</a>
                </td>
                <td class="middle aligned">
                    <a href="{{route('teacher.delete', $teacher->id)}}" class="delete-btn">Xóa</a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
@endsection