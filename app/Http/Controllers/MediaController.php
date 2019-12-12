<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Media;

class MediaController extends Controller
{
    public function single(Request $request)
    {
        if($request->hasFile('file')) {
            $ext = $request->file->getClientOriginalExtension();
            $name = \Str::uuid();
            $request->file->move(public_path('/uploads'), $name.'.'.$ext);
            $image = Media::create(['filename' => $name.'.'.$ext]);
            return $image;
        }
        return response()->json(['message' => 'Có lỗi sảy ra khi upload ảnh'], 500);
    }

    public function medium(Request $request) {
        if($request->hasFile('files')) {
            return $request->input('files')->getClientOriginalExtension();
        }
        return response()->json(['message' => 'Có lỗi sảy ra khi upload ảnh'], 500);
    }
}
