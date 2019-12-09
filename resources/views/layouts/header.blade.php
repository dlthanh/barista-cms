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