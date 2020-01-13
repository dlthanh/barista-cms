@extends('layouts.master')

@section('title', 'Cập nhật khóa học')

@section('main-title', 'Cập nhật khóa học')

@section('content')
    @if(count($errors) > 0)
        <ul class="user-form--error">Thêm mới lịch khai giảng
            @foreach($errors->all() as $error)
                <li class="ui red message">{!! $error !!}</li>
            @endforeach
        </ul>
    @endif

    <div class="ui top attached tabular menu">
        <a class="item" href="{{route('subject.getUpdate', $subject->id)}}">Thông tin cơ bản</a>
        <a class="item active">Media</a>
        <a class="item" href="{{route('subject.getUpdate.step3', $subject->id)}}">Chi tiết buổi học</a>
        <a class="item" href="{{route('subject.getUpdate.step4', $subject->id)}}">Giảng viên</a>
    </div>

    <div class="ui bottom attached segment">
        <form action="" method="POST" class="ui form" accept="image/*" enctype="multipart/form-data">
            @csrf
    
            <div class="required field">
                <label>Video</label>
                <input type="text" name="video" placeholder="Video" required value="{{old('video', isset($subject->video) ? $subject->video : null)}}">
            </div>

            <div class="two fields">
                <div class="required field">
                    <label>Gallery (Thêm nhiều ảnh)</label>
                    <input type="file" id="fileUpload" placeholder="Gallery" multiple>
                </div>

                <div class="field">
                    <label>Thêm một ảnh</label>
                    <input type="file" id="singleUpload" placeholder="Thêm ảnh vào gallery" multiple>
                </div>
            </div>

            <div id="gallery">
                @foreach($subject->media as $media)
                    <div class="item" data-id="{{$media->id}}">
                        <img src="/uploads/{{$media->filename}}" alt="">
                        <a href="javascript:void(0);" class="del-img">Xóa ảnh</a>
                    </div>
                @endforeach
            </div>
    
            <button type="submit" class="ui green button">Xác nhận</button>
        </form>
    </div>
@endsection

@push('script')
    <script>
        $(document).ready(function() {
            $('#fileUpload').on('change', function() {
                var filesUpload = $(this)[0].files;
                $.each(filesUpload, function(index, fileUpload) {
                    var formData = new FormData();
                    formData.append('file', fileUpload);
                    formData.append('subject_id', {{$subject->id}})
                    $.ajax({
                        type: 'POST',
                        url: '/media/gallery-upload',
                        data: formData,
                        contentType: false,
                        processData: false,
                        success:function(response){
                            $('<div class="item"><img src="/uploads/' + response.filename + '"><a href="javascript:void(0);" class="del-img">Xóa ảnh</a></div>').appendTo('#gallery');
                        },
                    })
                })
            });

            $('#singleUpload').on('change', function() {
                var fileUpload = $(this)[0].files[0];
                var formData = new FormData();
                formData.append('file', fileUpload);
                formData.append('subject_id', {{$subject->id}})
                $.ajax({
                    type: 'POST',
                    url: '/media/gallery-upload',
                    data: formData,
                    contentType: false,
                    processData: false,
                    success:function(response){
                        $('<div class="item" data-id="' + response.id + '"><img src="/uploads/' + response.filename + '"><a href="javascript:void(0);" class="del-img">Xóa ảnh</a></div>').appendTo('#gallery');
                        $('#singleUpload').val(null);
                    },
                })
            });

            $('#gallery').on('click', '.del-img', function(e) {
                var imgId = $(this).parents('.item').attr('data-id');
                $.ajax({
                    type: 'POST',
                    url: '/media/delete',
                    data: {id: imgId},
                    success:function(response){
                        $('#gallery .item[data-id="'+ imgId +'"]').remove();
                    },
                })
            })
        })
    </script>
@endpush