@extends('layouts.master')

@section('title', 'Cập nhật tin tức')

@section('main-title', 'Cập nhật tin tức')

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
            <input type="text" name="thumbnail" placeholder="Ảnh đại diện (trường không thể chỉnh sửa)" required value="{{old('thumbnail', isset($article) ? $article->thumbnail : null)}}" readonly>
            <img src="/uploads/{{$article->thumbnail}}" width="300">
        </div>

        <div class="required field">
            <label>Tiêu đề</label>
            <input type="text" name="title" placeholder="Tiêu đề" required value="{{old('title', isset($article) ? $article->title : null)}}">
        </div>

        <div class="required field">
            <label>Mô tả</label>
            <textarea name="description" rows="2">{{old('description', isset($article) ? $article->description : null)}}</textarea>
        </div>

        <div class="required field">
            <label>Danh mục</label>

            <div class="two fields">
                <div class="field">
                    <div class="ui radio checkbox">
                        <input type="radio" name="cat_id" id="r1" value="1" {{$article->cat_id == 1 ? 'checked' : ''}}>
                        <label for="r1">Review & Đánh giá</label>
                    </div>
                </div>
                <div class="field">
                    <div class="ui radio checkbox">
                        <input type="radio" name="cat_id" id="r2" value="2" {{$article->cat_id == 2 ? 'checked' : ''}}>
                        <label for="r2">Chia sẻ kinh nghiệm</label>
                    </div>
                </div>

                <div class="field">
                    <div class="ui radio checkbox">
                        <input type="radio" name="cat_id" id="r3" value="3" {{$article->cat_id == 3 ? 'checked' : ''}}>
                        <label for="r3">Công thức pha chế</label>
                    </div>
                </div>
            </div>
        </div>

        <div class="required field">
            <label>Nội dung</label>
            <textarea name="content">{{old('content', isset($article) ? $article->content : null)}}</textarea>
        </div>

        {{-- <input id="fileupload" type="file" name="files[]" multiple> --}}

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
    <script>
        $(document).ready(function() {
            var articleContent = new MediumEditor('textarea[name="content"]');
            $(function () {
                $('textarea[name="content"]').mediumInsert({
                    editor: articleContent,
                    addons: {
                        images: {
                            fileUploadOptions: {
                                paramName: 'attachments[]',
                                url: '/media/medium-upload',
                                acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i,
                            },
                        },
                        embeds: {
                            oembedProxy: null
                        }
                    }
                });
            });

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
        })
    </script>
@endpush