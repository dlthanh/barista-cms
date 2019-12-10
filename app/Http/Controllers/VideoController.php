<?php

namespace App\Http\Controllers;

use App\Http\Requests\VideoRequest;
use Illuminate\Http\Request;
use App\Models\Video;
use Illuminate\Support\Facades\Auth;

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

    public function getCreate()
    {
        return view('video.create');
    }

    public function postCreate(VideoRequest $request)
    {
        $video = [
            'title' => $request->title,
            'description' => $request->description,
            'embed' => $request->embed,
            'thumbnail' => 'http://i3.ytimg.com/vi/'.$request->embed.'/maxresdefault.jpg',
            'user_id' => Auth::user()->id
        ];
        Video::create($video);
        return redirect()->route('video.index')->with('message', 'Thêm video thành công');
    }

    public function getUpdate($id)
    {
        $video = Video::find($id);
        if(!isset($video)) {
            return redirect()->route('video.index')->with('message', 'Không tìm thấy video có ID = '. $id);
        }
        return view('video.update', ['video' => $video]);
    }

    public function postUpdate($id, VideoRequest $request)
    {
        $data = Video::find($id);
        if(!isset($data)) {
            return redirect()->route('video.index')->with('message', 'Không tìm thấy video có ID = '. $id);
        }
        $video = [
            'title' => $request->title,
            'description' => $request->description,
            'embed' => $request->embed,
            'thumbnail' => 'http://i3.ytimg.com/vi/'.$request->embed.'/maxresdefault.jpg',
        ];
        $isUpdated = $data->update($video);

        if($isUpdated) {
            return redirect()->route('video.getUpdate', $id)
                ->with('message', 'Cập nhật video thành công')
                ->with('video', $video);
        }
    }

    public function delete($id)
    {
        $video = Video::find($id);
        if(!isset($video)) {
            return redirect()->route('video.index')->with('message', 'Không tìm thấy video có ID = '. $id);
        }
        $video->delete();
        return redirect()->route('video.index')->with('message', 'Xóa thành công video "'. $video->title . '"');
    }
}
