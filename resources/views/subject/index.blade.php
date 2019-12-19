@extends('layouts.master')

@section('title', 'Danh sách khóa học')

@section('main-title', 'Quản lý khóa học')

@section('btn-group')
    <a href="{{route('subject.getCreate')}}" class="ui green button">Thêm khóa học</a>
@endsection

@section('content')
    @if(session('message'))
        <div class="main-message ui green message">{{session('message')}}</div>
    @endif

    <table class="ui celled table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Tên khóa học</th>
                <th>Giá tiền</th>
                <th>Số buổi</th>
                <th colspan="2">Hành động</th>
            </tr>
        </thead>
        <tbody>
        @foreach($subjects as $article)
            <tr>
                <td class="middle aligned">{{$subject->id}}</td>
                <td class="middle aligned">{{$subject->title}}"</td>
                <td class="middle aligned">{{$subject->price}}</td>
                <td class="middle aligned">{{$subject->session}}</td>
                <td class="middle aligned">
                    <a href="{{route('subject.getUpdate', $subject->id)}}">Sửa</a>
                </td>
                <td class="middle aligned">
                    <a href="{{route('subject.delete', $subject->id)}}" class="delete-btn">Xóa</a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>

    @if($subjects->lastPage() > 1)
        <ul class="ui pagination menu">
            @if($subjects->currentPage() !== 1)
                <li class="item">    
                    <a href="{{$subjects->previousPageUrl()}}">Trang trước</a>
                </li>
            @endif
            @if($subjects->lastPage() >= 3)
                <li class="item {{!isset($_GET['page']) || $subjects->lastPage() - 2 >= $_GET['page'] ? 'active': ''}}">
                    @if($subjects->currentPage() <= $subjects->lastPage() - 3)
                        <a href="{{$subjects->url($subjects->currentPage())}}">{{$subjects->currentPage()}}</a>
                    @else
                        <a href="{{$subjects->url($subjects->lastPage() - 2)}}">{{$subjects->lastPage() - 2}}</a>
                    @endif
                </li>
                <li class="item {{isset($_GET['page']) && $subjects->lastPage() - 1 == $_GET['page'] ? 'active': ''}}">
                    @if($subjects->currentPage() <= $subjects->lastPage() - 3)
                        <a href="{{$subjects->nextPageUrl()}}">{{$subjects->currentPage() + 1}}</a>
                    @else
                        <a href="{{$subjects->url($subjects->lastPage() - 1)}}">{{$subjects->lastPage() - 1}}</a>
                    @endif
                </li>
                <li class="item {{isset($_GET['page']) && $subjects->lastPage() == $_GET['page'] ? 'active': ''}}">
                    @if($subjects->currentPage() <= $subjects->lastPage() - 3)
                        <a href="{{$subjects->url($subjects->currentPage() + 2)}}">{{$subjects->currentPage() + 2}}</a>
                    @else
                        <a href="{{$subjects->url($subjects->lastPage())}}">{{$subjects->lastPage()}}</a>
                    @endif
                </li>
            @else
                <li class="item {{$subjects->currentPage() == 1 ? 'active': ''}}">
                    <a href="{{$subjects->url(1)}}">1</a>
                </li>
                <li class="item {{$subjects->currentPage() == 2 ? 'active': ''}}">
                    <a href="{{$subjects->url(2)}}">2</a>
                </li>
            @endif
            @if($subjects->currentPage() <= $subjects->lastPage() - 3)
                <li class="item">...</li>
                <li class="item">
                    <a href="{{$subjects->url($subjects->lastPage())}}">{{$subjects->lastPage()}}</a>
                </li>
            @endif
            @if($subjects->currentPage() !== $subjects->lastPage())
                <li class="item">    
                    <a href="{{$subjects->nextPageUrl()}}">Trang sau</a>
                </li>
            @endif
        </ul>
    @endif
@endsection