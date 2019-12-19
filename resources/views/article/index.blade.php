@extends('layouts.master')

@section('title', 'Danh sách tin tức')

@section('main-title', 'Quản lý tin tức')

@section('btn-group')
    <a href="{{route('article.getCreate')}}" class="ui green button">Thêm tin tức</a>
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
                <th>Danh mục</th>
                <th>Người tạo</th>
                <th colspan="2">Hành động</th>
            </tr>
        </thead>
        <tbody>
        @foreach($articles as $article)
            <tr>
                <td class="middle aligned">{{$article->id}}</td>
                <td class="middle aligned"><img src="/uploads/{{$article->thumbnail}}" alt="" width="80"></td>
                <td class="middle aligned">{{$article->title}}</td>
                <td class="middle aligned">{{$article->description}}</td>
                <td class="middle aligned">
                    @if ($article->cat_id == 1)
                        Review & Đánh giá
                    @elseif($article->cat_id == 2)
                        Chia sẻ kiến thức
                    @else
                        Công thức pha chế
                    @endif
                </td>
                <td class="middle aligned">{{$article->user->name}}</td>
                <td class="middle aligned">
                    <a href="{{route('article.getUpdate', $article->id)}}">Sửa</a>
                </td>
                <td class="middle aligned">
                    <a href="{{route('article.delete', $article->id)}}" class="delete-btn">Xóa</a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>

    @if($articles->lastPage() > 1)
        <ul class="ui pagination menu">
            @if($articles->currentPage() !== 1)
                <li class="item">    
                    <a href="{{$articles->previousPageUrl()}}">Trang trước</a>
                </li>
            @endif
            @if($articles->lastPage() >= 3)
                <li class="item {{!isset($_GET['page']) || $articles->lastPage() - 2 >= $_GET['page'] ? 'active': ''}}">
                    @if($articles->currentPage() <= $articles->lastPage() - 3)
                        <a href="{{$articles->url($articles->currentPage())}}">{{$articles->currentPage()}}</a>
                    @else
                        <a href="{{$articles->url($articles->lastPage() - 2)}}">{{$articles->lastPage() - 2}}</a>
                    @endif
                </li>
                <li class="item {{isset($_GET['page']) && $articles->lastPage() - 1 == $_GET['page'] ? 'active': ''}}">
                    @if($articles->currentPage() <= $articles->lastPage() - 3)
                        <a href="{{$articles->nextPageUrl()}}">{{$articles->currentPage() + 1}}</a>
                    @else
                        <a href="{{$articles->url($articles->lastPage() - 1)}}">{{$articles->lastPage() - 1}}</a>
                    @endif
                </li>
                <li class="item {{isset($_GET['page']) && $articles->lastPage() == $_GET['page'] ? 'active': ''}}">
                    @if($articles->currentPage() <= $articles->lastPage() - 3)
                        <a href="{{$articles->url($articles->currentPage() + 2)}}">{{$articles->currentPage() + 2}}</a>
                    @else
                        <a href="{{$articles->url($articles->lastPage())}}">{{$articles->lastPage()}}</a>
                    @endif
                </li>
            @else
                <li class="item {{$articles->currentPage() == 1 ? 'active': ''}}">
                    <a href="{{$articles->url(1)}}">1</a>
                </li>
                <li class="item {{$articles->currentPage() == 2 ? 'active': ''}}">
                    <a href="{{$articles->url(2)}}">2</a>
                </li>
            @endif
            @if($articles->currentPage() <= $articles->lastPage() - 3)
                <li class="item">...</li>
                <li class="item">
                    <a href="{{$articles->url($articles->lastPage())}}">{{$articles->lastPage()}}</a>
                </li>
            @endif
            @if($articles->currentPage() !== $articles->lastPage())
                <li class="item">    
                    <a href="{{$articles->nextPageUrl()}}">Trang sau</a>
                </li>
            @endif
        </ul>
    @endif
@endsection