@extends('layouts.master')

@section('title', 'Danh sách lịch khai giảng')

@section('main-title', 'Quản lý lịch khai giảng')

@section('btn-group')
    <a href="{{route('course.getCreate')}}" class="ui green button">Thêm lịch khai giảng</a>
@endsection

@section('content')
    @if(session('message'))
        <div class="main-message ui green message">{{session('message')}}</div>
    @endif

    <table class="ui celled table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Ngày khai giảng</th>
                <th>Nội dung lớp học</th>
                <th colspan="2">Hành động</th>
            </tr>
        </thead>
        <tbody>
        @foreach($courses as $course)
            <tr>
                <td class="middle aligned">{{$course->id}}</td>
                <td class="middle aligned">{{$course->date.'/'.$course->month.'/'.$course->year}}</td>
                <td class="middle aligned">{{$course->label}}</td>
                <td class="middle aligned">
                    <a href="{{route('course.getUpdate', $course->id)}}">Sửa</a>
                </td>
                <td class="middle aligned">
                    <a href="{{route('course.delete', $course->id)}}" class="delete-btn">Xóa</a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>

    @if($courses->lastPage() > 1)
        <ul class="ui pagination menu">
            @if($courses->currentPage() !== 1)
                <li class="item">    
                    <a href="{{$courses->previousPageUrl()}}">Trang trước</a>
                </li>
            @endif
            @if($courses->lastPage() >= 3)
                <li class="item {{!isset($_GET['page']) || $courses->lastPage() - 2 >= $_GET['page'] ? 'active': ''}}">
                    @if($courses->currentPage() <= $courses->lastPage() - 3)
                        <a href="{{$courses->url($courses->currentPage())}}">{{$courses->currentPage()}}</a>
                    @else
                        <a href="{{$courses->url($courses->lastPage() - 2)}}">{{$courses->lastPage() - 2}}</a>
                    @endif
                </li>
                <li class="item {{isset($_GET['page']) && $courses->lastPage() - 1 == $_GET['page'] ? 'active': ''}}">
                    @if($courses->currentPage() <= $courses->lastPage() - 3)
                        <a href="{{$courses->nextPageUrl()}}">{{$courses->currentPage() + 1}}</a>
                    @else
                        <a href="{{$courses->url($courses->lastPage() - 1)}}">{{$courses->lastPage() - 1}}</a>
                    @endif
                </li>
                <li class="item {{isset($_GET['page']) && $courses->lastPage() == $_GET['page'] ? 'active': ''}}">
                    @if($courses->currentPage() <= $courses->lastPage() - 3)
                        <a href="{{$courses->url($courses->currentPage() + 2)}}">{{$courses->currentPage() + 2}}</a>
                    @else
                        <a href="{{$courses->url($courses->lastPage())}}">{{$courses->lastPage()}}</a>
                    @endif
                </li>
            @else
                <li class="item {{$courses->currentPage() == 1 ? 'active': ''}}">
                    <a href="{{$courses->url(1)}}">1</a>
                </li>
                <li class="item {{$courses->currentPage() == 2 ? 'active': ''}}">
                    <a href="{{$courses->url(2)}}">2</a>
                </li>
            @endif
            @if($courses->currentPage() <= $courses->lastPage() - 3)
                <li class="item">...</li>
                <li class="item">
                    <a href="{{$courses->url($courses->lastPage())}}">{{$courses->lastPage()}}</a>
                </li>
            @endif
            @if($courses->currentPage() !== $courses->lastPage())
                <li class="item">    
                    <a href="{{$courses->nextPageUrl()}}">Trang sau</a>
                </li>
            @endif
        </ul>
    @endif
@endsection