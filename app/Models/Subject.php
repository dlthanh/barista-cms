<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    protected $fillable = [
        'title', 'quote', 'price', 'session', 'time', 'description', 'video', 'content', 'isHome', 'thumbnail'
    ];

    protected $casts = [
        'content' => 'array'
    ];
}
