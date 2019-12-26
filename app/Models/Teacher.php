<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Teacher extends Model
{
    protected $fillable = [
        'name', 'quote', 'avatar'
    ];

    public function subjects()
    {
        return $this->belongsToMany('App\Models\Subject', 'teacher_subject');
    }
}
