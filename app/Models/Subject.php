<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    protected $fillable = [
        'title', 'quote', 'price', 'session', 'time', 'description', 'short_description', 'video', 'content', 'isHome', 'thumbnail', 'isActive'
    ];

    protected $casts = [
        'content' => 'array'
    ];
}
