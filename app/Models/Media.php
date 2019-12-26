<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Media extends Model
{
    protected $fillable = [
        'filename', 'subject_id'
    ];

    public function subject()
    {
        return $this->belongsTo('App\Models\Subject');
    }
}
