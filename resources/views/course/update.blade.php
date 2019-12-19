@extends('layouts.master')

@section('title', 'Cập nhật lịch khai giảng')

@section('main-title', 'Cập nhật lịch khai giảng')

@section('content')
    @if(count($errors) > 0)
        <ul class="user-form--error">
            @foreach($errors->all() as $error)
                <li class="ui red message">{!! $error !!}</li>
            @endforeach
        </ul>
    @endif

    @if(session('message'))
        <div class="main-message ui green message">{{session('message')}}</div>
    @endif

    <form action="" method="POST" class="ui form" accept="image/*" enctype="multipart/form-data">
        @csrf

        <div class="two fields">
            <div class="required field">
                <label>Ngày</label>
                <input type="number" name="date" placeholder="Ngày" min="1" max="31" required value="{{old('date', isset($course) ? $course->date : null)}}">
            </div>

            <div class="required field">
                <label>Tháng</label>
                <div class="ui selection dropdown">
                    <input type="hidden" name="month" required value="{{old('month', isset($course) ? $course->month : null)}}">
                    <i class="dropdown icon"></i>
                    <div class="{{!$course->month ?? 'default'}} text">{{old('month', isset($course) ? $course->month : null)}}</div>
                    <div class="menu">
                        <div class="item" data-value="1">1</div>
                        <div class="item" data-value="2">2</div>
                        <div class="item" data-value="3">3</div>
                        <div class="item" data-value="4">4</div>
                        <div class="item" data-value="5">5</div>
                        <div class="item" data-value="6">6</div>
                        <div class="item" data-value="7">7</div>
                        <div class="item" data-value="8">8</div>
                        <div class="item" data-value="9">9</div>
                        <div class="item" data-value="10">10</div>
                        <div class="item" data-value="11">11</div>
                        <div class="item" data-value="12">12</div>
                    </div>
                </div>
            </div>

            <div class="required field">
                <label>Năm</label>
                <input type="number" name="year" placeholder="Năm" min="2019" required value="{{old('year', isset($course) ? $course->year : null)}}">
            </div>
        </div>

        <div class="required field">
            <label>Nội dung khóa học</label>
            <input type="text" name="label" placeholder="Nội dung" required value="{{old('label', isset($course) ? $course->label : null)}}">
        </div>

        <button type="submit" class="ui green button">Xác nhận</button>
    </form>
@endsection

@push('stylesheet')
    <link rel="stylesheet" href="{{asset('')}}fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="{{asset('')}}medium-editor/css/medium-editor.min.css">
    <link rel="stylesheet" href="{{asset('')}}medium-editor/css/themes/beagle.min.css">
    <link rel="stylesheet" href="{{asset('')}}medium-editor/css/medium-editor-insert-plugin.min.css">
@endpush

@push('script')
    <script src="{{asset('')}}medium-editor/js/medium-editor.min.js"></script>
    <script src="{{asset('')}}medium-editor/js/handlebars.runtime.min.js"></script>
    <script src="{{asset('')}}medium-editor/js/jquery-sortable-min.js"></script>
    <script src="{{asset('')}}medium-editor/js/jquery.ui.widget.js"></script>
    <script src="{{asset('')}}medium-editor/js/jquery.iframe-transport.min.js"></script>
    <script src="{{asset('')}}medium-editor/js/jquery.fileupload.js"></script>
    <script src="{{asset('')}}medium-editor/js/medium-editor-insert-plugin.min.js"></script>
@endpush