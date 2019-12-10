<?php

namespace App\Http\Controllers\Api;

use App\Models\Video;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class VideoController extends Controller
{
    public function index()
    {
        $videos = Video::orderBy('id', 'DESC')->take(12)->get();
        return response()->json($videos)
            ->withHeaders([
                'Content-Type' => 'application/json; charset=UTF-8',
                'charset' => 'utf-8'
            ]);
    }

    public function detail($id)
    {
        $video = Video::findOrFail($id);
        if(!isset($video)) {
            return response()->json(['message' => 'Video không tồn tại'], 404);
        }
        return response()->json($video)
            ->withHeaders([
                'Content-Type' => 'application/json; charset=UTF-8',
                'charset' => 'utf-8'
            ]);
    }
}
