<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
    protected $fillable = [
        'title', 'description', 'thumbnail', 'embed'
    ];

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
}
