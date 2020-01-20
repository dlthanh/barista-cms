@extends('layouts.master')

@section('title', 'Thêm mới khóa học')

@section('main-title', 'Thêm mới khóa học')

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

    <div class="ui top attached tabular menu">
        <a class="item active">Thông tin cơ bản</a>
        <a class="item" href="{{route('subject.getUpdate.step2', $subject->id)}}">Media</a>
        <a class="item" href="{{route('subject.getUpdate.step3', $subject->id)}}">Chi tiết buổi học</a>
        <a class="item" href="{{route('subject.getUpdate.step4', $subject->id)}}">Giảng viên</a>
    </div>

    <div class="ui bottom attached segment">
        <form action="" method="POST" class="ui form" accept="image/*" enctype="multipart/form-data">
            @csrf
    
            <div class="fields">
                <div class="required field">
                    <label>Ảnh đại diện</label>
                    <input type="file" id="fileUpload" placeholder="Ảnh đại diện">
                </div>
            </div>
            <div class="required field">
                <input type="text" name="thumbnail" placeholder="Ảnh đại diện (trường không thể chỉnh sửa)" required value="{{old('thumbnail', isset($subject->thumbnail) ? $subject->thumbnail : null)}}" readonly>
                <img src="/uploads/{{$subject->thumbnail}}" width="300">
            </div>

            <div class="two fields">
                <div class="required field">
                    <label>Tiêu đề</label>
                    <input type="text" name="title" placeholder="Tiêu đề" required value="{{old('title', isset($subject->title) ? $subject->title : null)}}">
                </div>

                <div class="required field">
                    <label>Quote</label>
                    <input type="text" name="quote" placeholder="Quote" required value="{{old('quote', isset($subject->quote) ? $subject->quote : null)}}">
                </div>
            </div>

            <div class="two fields">
                <div class="required field">
                    <label>Giá tiền</label>
                    <input type="text" name="price" placeholder="Giá tiền" required value="{{old('price', isset($subject->price) ? $subject->price : null)}}">
                </div>

                <div class="required field">
                    <label>Số buổi học</label>
                    <input type="text" name="session" placeholder="Số buổi học" required value="{{old('session', isset($subject->session) ? $subject->session : null)}}">
                </div>

                <div class="required field">
                    <label>Thời gian học / 1 buổi</label>
                    <input type="text" name="time" placeholder="Thời gian học" required value="{{old('time', isset($subject->time) ? $subject->time : null)}}">
                </div>

                <div class="required field">
                    <label>Hiển thị trang chủ</label>
        
                    <div class="two fields">
                        <div class="field">
                            <div class="ui radio checkbox">
                                <input type="radio" name="isHome" id="r1" value="1" {{$subject->isHome ? 'checked': ''}}>
                                <label for="r1">Có</label>
                            </div>
                        </div>
                        <div class="field">
                            <div class="ui radio checkbox">
                                <input type="radio" name="isHome" id="r2" value="0"{{!$subject->isHome ? 'checked': ''}}>
                                <label for="r2">Không</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="required field">
                <label>Mô tả ngắn (Trang khóa học)</label>
                <textarea name="short_description" rows="2">{{old('short_description', isset($subject->short_description) ? $subject->short_description : null)}}</textarea>
            </div>
    
            <div class="required field">
                <label>Mô tả (Trang chi tiết || Không Copy & Paste))</label>
                <textarea name="description" rows="5" hidden>{{old('description', isset($subject->description) ? $subject->description : null)}}</textarea>
                <div contenteditable="true" id="description">
                    {!! old('description', isset($subject->description) ? $subject->description : null) !!}
                </div>
            </div>
    
            <button type="submit" class="ui green button">Xác nhận</button>
        </form>
    </div>
@endsection

@push('script')
    <script>
        $(document).ready(function() {
            $('#fileUpload').on('change', function() {
                var fileUpload = $(this)[0].files[0];
                var formData = new FormData();
                formData.append('file', fileUpload);
                $.ajax({
                    type: 'POST',
                    url: '/media/single-upload',
                    data: formData,
                    contentType: false,
                    processData: false,
                    success:function(response){
                        $('input[name="thumbnail"]').val(response.filename);
                        if($('input[name="thumbnail"]').next().is('img')) {
                            $('input[name="thumbnail"]').next().remove();
                        }
                        $('input[name="thumbnail"]').after('<img src="/uploads/' + response.filename + '" width="300">')
                    },
                })
            });

            var editor = document.getElementById('description');
            editor.designMode = 'on';
            editor.addEventListener('keypress', function(e) {
                if(e.key == "Enter" || e.keyCode == 13 || e.which == 13) {
                    document.execCommand('formatBlock', false, 'p')
                }
                document.getElementsByName('description')[0].value = editor.innerHTML;
            })
            editor.addEventListener('keyup', function(e) {
                document.getElementsByName('description')[0].value = editor.innerHTML;
            })
        })
    </script>
@endpush