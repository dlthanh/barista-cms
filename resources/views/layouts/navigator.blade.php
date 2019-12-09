<div class="nav">
    <div class="ui secondary vertical pointing menu">
        <a class="item {{request()->is('/') ? 'active' : ''}}">
            Bảng điều khiển
        </a>
        <a class="item">
            Khóa học
        </a>
        <a class="item">
            Tin tức
        </a>
        <a class="item">
            Video
        </a>
        <a class="item">
            Nhận xét của học viên
        </a>
        <a class="item">
            Thông tin khách hàng
        </a>
        <a class="item {{request()->is('users*') ? 'active' : ''}}" href="{{route('user.index')}}">
            Người dùng
        </a>
    </div>
</div>