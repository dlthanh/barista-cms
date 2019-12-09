<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Video;

class VideoController extends Controller
{
    public function __construct()
    {

    }

    public function index()
    {
        $videos = Video::all();
        return view('video.index', ['videos' => $videos]);
    }
}
