<div class="header">
    <div class="ui dropdown">
        <div class="text">{{Auth::user()->fullname == null ? Auth::user()->name : Auth::user()->fullname}}</div>
        <i class="dropdown icon"></i>
        <div class="menu">
            <div class="item">Thông tin cá nhân</div>
            <div class="item">Đăng xuất</div>
        </div>
    </div>
</div>