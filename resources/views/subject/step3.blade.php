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
        <a class="item" href="{{route('subject.getUpdate.step2', $subject->id)}}">Chi tiết buổi học</a>
        <a class="item active">Chi tiết buổi học</a>
        <a class="item" href="{{route('subject.getUpdate.step4', $subject->id)}}">Giảng viên</a>
    </div>

    <div class="ui bottom attached segment">
        <form action="" method="POST" class="ui form" accept="image/*" enctype="multipart/form-data">
            @csrf
    
            @for($i = 0; $i < $subject->session; $i++)
            <div class="required field">
                <label>Buổi {{$i + 1}}</label>
                <input type="text" name="content[{{$i}}][title]" placeholder="Tiêu đề buổi học" required value="{{old('content['.$i.'][title]', isset($subject) ? $subject->content[$i]['title'] : null)}}">
                <br />
                <br />
                <textarea name="content[{{$i}}][content]" rows="4" placeholder="Nội dung buổi học" hidden>{{old('content['.$i.'][content]', isset($subject) ? $subject->content[$i]['content'] : null)}}</textarea>

                <div contenteditable="true" content-id="{{$i}}" name="content">
                    {!! old('content['.$i.'][content]', isset($subject) ? $subject->content[$i]['content'] : null) !!}
                </div>
            </div>
            @endfor
    
            <button type="submit" class="ui green button">Xác nhận</button>
        </form>
    </div>
@endsection

@push('script')
    <script>
        $(document).ready(function() {
            var editors = document.getElementsByName('content');
            $.each(editors, function(index, editor) {
                editor.designMode = 'on';
                editor.addEventListener('keypress', function(e) {
                    if(e.key == "Enter" || e.keyCode == 13 || e.which == 13) {
                        document.execCommand('formatBlock', false, 'p')
                    }
                    $(editor).prev().val(editor.innerHTML);
                })
                editor.addEventListener('keyup', function(e) {
                    $(editor).prev().val(editor.innerHTML);
                })
            })
        })
    </script>
@endpush