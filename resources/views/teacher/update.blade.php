@extends('layouts.master')

@section('title', 'Cập nhật giảng viên')

@section('main-title', 'Cập nhật giảng viên')

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

        <div class="fields">
            <div class="required field">
                <label>Ảnh đại diện</label>
                <input type="file" id="fileUpload" placeholder="Ảnh đại diện">
            </div>
        </div>
        <div class="required field">
            <input type="text" name="avatar" placeholder="Ảnh đại diện (trường không thể chỉnh sửa)" required value="{{old('avatar', isset($teacher->avatar) ? $teacher->avatar : null)}}" readonly>
            @if (isset($teacher->avatar))
                <img src="/uploads/{{$teacher->avatar}}" width="300">
            @endif
        </div>

        <div class="required field">
            <label>Tên giảng viên</label>
            <input type="text" name="name" placeholder="Tên giảng viên" required value="{{old('name', isset($teacher->name) ? $teacher->name : null)}}">
        </div>

        <div class="required field">
            <label>Quote</label>
            <input type="text" name="quote" placeholder="Quote" required value="{{old('quote', isset($teacher->quote) ? $teacher->quote : null)}}">
        </div>

        <button type="submit" class="ui green button">Xác nhận</button>
    </form>
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
                        $('input[name="avatar"]').val(response.filename);
                        if($('input[name="avatar"]').next().is('img')) {
                            $('input[name="avatar"]').next().remove();
                        }
                        $('input[name="avatar"]').after('<img src="/uploads/' + response.filename + '" width="300">')
                    },
                })
            });
        })
    </script>
@endpush