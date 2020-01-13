@extends('layouts.master')

@section('title', 'Danh sách khách hàng')

@section('main-title', 'Quản lý khách hàng')

@section('content')
    <table class="ui celled table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Họ tên</th>
                <th>Email</th>
                <th>Số điện thoại</th>
                <th>Lời nhắn</th>
            </tr>
        </thead>
        <tbody>
        @foreach($customers as $customer)
            <tr>
                <td class="middle aligned">{{$customer->id}}</td>
                <td class="middle aligned">{{$customer->name}}</td>
                <td class="middle aligned">{{$customer->email}}</td>
                <td class="middle aligned">{{$customer->phone}}</td>
                <td class="middle aligned">{{$customer->message}}</td>
            </tr>
        @endforeach
        </tbody>
    </table>

    @if($customers->lastPage() > 1)
        <ul class="ui pagination menu">
            @if($customers->currentPage() !== 1)
                <li class="item">    
                    <a href="{{$customers->previousPageUrl()}}">Trang trước</a>
                </li>
            @endif
            @if($customers->lastPage() >= 3)
                <li class="item {{!isset($_GET['page']) || $customers->lastPage() - 2 >= $_GET['page'] ? 'active': ''}}">
                    @if($customers->currentPage() <= $customers->lastPage() - 3)
                        <a href="{{$customers->url($customers->currentPage())}}">{{$customers->currentPage()}}</a>
                    @else
                        <a href="{{$customers->url($customers->lastPage() - 2)}}">{{$customers->lastPage() - 2}}</a>
                    @endif
                </li>
                <li class="item {{isset($_GET['page']) && $customers->lastPage() - 1 == $_GET['page'] ? 'active': ''}}">
                    @if($customers->currentPage() <= $customers->lastPage() - 3)
                        <a href="{{$customers->nextPageUrl()}}">{{$customers->currentPage() + 1}}</a>
                    @else
                        <a href="{{$customers->url($customers->lastPage() - 1)}}">{{$customers->lastPage() - 1}}</a>
                    @endif
                </li>
                <li class="item {{isset($_GET['page']) && $customers->lastPage() == $_GET['page'] ? 'active': ''}}">
                    @if($customers->currentPage() <= $customers->lastPage() - 3)
                        <a href="{{$customers->url($customers->currentPage() + 2)}}">{{$customers->currentPage() + 2}}</a>
                    @else
                        <a href="{{$customers->url($customers->lastPage())}}">{{$customers->lastPage()}}</a>
                    @endif
                </li>
            @else
                <li class="item {{$customers->currentPage() == 1 ? 'active': ''}}">
                    <a href="{{$customers->url(1)}}">1</a>
                </li>
                <li class="item {{$customers->currentPage() == 2 ? 'active': ''}}">
                    <a href="{{$customers->url(2)}}">2</a>
                </li>
            @endif
            @if($customers->currentPage() <= $customers->lastPage() - 3)
                <li class="item">...</li>
                <li class="item">
                    <a href="{{$customers->url($customers->lastPage())}}">{{$customers->lastPage()}}</a>
                </li>
            @endif
            @if($customers->currentPage() !== $customers->lastPage())
                <li class="item">    
                    <a href="{{$customers->nextPageUrl()}}">Trang sau</a>
                </li>
            @endif
        </ul>
    @endif
@endsection