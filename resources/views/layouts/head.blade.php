<div class="header">
    <div class="ui dropdown">
        <div class="text">{{Auth::user()->fullname == null ? Auth::user()->name : Auth::user()->fullname}}</div>
    </div>
</div>