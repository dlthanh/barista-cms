<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
    protected $fillable = [
        'title', 'description', 'thumbnail', 'embed', 'user_id'
    ];

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
}
