@extends('layouts.master')

@section('title', 'Cập nhật khóa học')

@section('main-title', 'Cập nhật khóa học')

@section('content')
    @if(count($errors) > 0)
        <ul class="user-form--error">
            @foreach($errors->all() as $error)
                <li class="ui red message">{!! $error !!}</li>
            @endforeach
        </ul>
    @endif

    <div class="ui top attached tabular menu">
        <a class="item" href="{{route('subject.getUpdate', $subject->id)}}">Thông tin cơ bản</a>
        <a class="item" href="{{route('subject.getUpdate.step2', $subject->id)}}">Media</a>
        <a class="item" href="{{route('subject.getUpdate.step3', $subject->id)}}">Chi tiết buổi học</a>
        <a class="item active">Giảng viên</a>
    </div>

    <div class="ui bottom attached segment">
        <form action="" method="POST" class="ui form" accept="image/*" enctype="multipart/form-data">
            @csrf

            @foreach($teachers as $teacher)
            @php
                $data = DB::table('teacher_subject')->where('teacher_id', '=', $teacher->id)->where('subject_id', '=', $subject->id)->get();
            @endphp
            <div class="field">
                <div class="ui checkbox">
                    <input type="checkbox" name="teacher_id[]" id="teacher-{{$teacher->id}}" value="{{$teacher->id}}" {{$data->count() > 0 ? 'checked' : ''}}>
                    <label for="teacher-{{$teacher->id}}">{{$teacher->name}}</label>
                </div>
            </div>
            @endforeach
    
            <button type="submit" class="ui green button">Xác nhận</button>
        </form>
    </div>
@endsection