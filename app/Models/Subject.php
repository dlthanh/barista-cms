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

    public function media()
    {
        return $this->hasMany('App\Models\Media');
    }

    public function teachers()
    {
        return $this->belongsToMany('App\Models\Teacher', 'teacher_subject');
    }
}
