<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Media;
use App\Models\Subject;

class MediaController extends Controller
{
    public function subject($id)
    {
        $subject = Subject::find($id);
        if(!isset($subject)) {
            return response()->json(['message' => 'Khóa học không tồn tại']);
        }

        $media = $subject->media;
        return response()->json($media);
    }
}