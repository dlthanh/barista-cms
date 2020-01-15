<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title') | Barista Control Panel</title>
    <link rel="stylesheet" href="{{asset('')}}css/reset.css">
    <link rel="stylesheet" href="{{asset('')}}css/fonts.css">
    <link rel="stylesheet" href="{{asset('')}}css/semantic.min.css">
    <link rel="stylesheet" href="{{asset('')}}css/semantic.custom.css">
    @stack('stylesheet')
    @if(Auth()->check())
        <link rel="stylesheet" href="{{asset('')}}css/style.css">
    @else
        <link rel="stylesheet" href="{{asset('')}}css/login.css">
    @endif

    <script src="{{asset('')}}js/jquery.min.js"></script>
    <script src="{{asset('')}}js/semantic.min.js"></script>
    <script>
        $(document).ready(function() {
            $('.ui.dropdown').dropdown();

            $('.delete-btn').click(function() {
                if($(this).hasClass('delete-user')) {
                    return confirm('Tất cả các bài viết, video được tạo bởi người dùng này sẽ bị xóa\nKHÓA người dùng nếu bạn muốn giữ lại toàn bộ dữ liệu\nBạn có xác nhận muốn XÓA người dùng này');    
                }
                return confirm('Bạn có xác định muốn XÓA bản ghi này');
            });

            $('.lock-btn').click(function() {
                return confirm('Bạn có xác nhận muốn KHÓA người dùng này');
            });

            $('.unlock-btn').click(function() {
                return confirm('Sau khi MỞ KHÓA người dùng sẽ phân quyền Editor\nBạn có xác nhận muốn MỞ KHÓA người dùng này');
            });
        })
    </script>
    @stack('script')
</head>
<body>
    @if(Auth()->check())
        @include('layouts.head')
        <div class="main">
            @include('layouts.navigator')
            <div class="main-wrap">
                <div class="main-heading">
                    <div class="main-title">@yield('main-title')</div>

                    <div class="main-btngroup">
                        @yield('btn-group')
                    </div>
                </div>
                @yield('content')
            </div>
        </div>
    @else
        @yield('login')
    @endif
</body>
</html>