<div class="nav">
    <div class="ui secondary vertical pointing menu">
        <a class="item {{request()->is('/') ? 'active' : ''}}">
            Bảng điều khiển
        </a>
        <a class="item">
            Khóa học
        </a>
        <a class="item {{request()->is('articles*') ? 'active' : ''}}" href="{{route('article.index')}}">
            Tin tức
        </a>
        <a class="item {{request()->is('videos*') ? 'active' : ''}}" href="{{route('video.index')}}">
            Video
        </a>
        <a class="item">
            Lịch khai giảng
        </a>
        <a class="item">
            Thông tin khách hàng
        </a>
        <a class="item {{request()->is('users*') ? 'active' : ''}}" href="{{route('user.index')}}">
            Người dùng
        </a>
    </div>
</div>