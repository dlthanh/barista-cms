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

    public function gallery(Request $request)
    {
        if($request->hasFile('file')) {
            $ext = $request->file->getClientOriginalExtension();
            $name = \Str::uuid();
            $request->file->move(public_path('/uploads'), $name.'.'.$ext);
            $image = Media::create(['filename' => $name.'.'.$ext, 'subject_id' => $request->subject_id]);
            return $image;
        }
        return response()->json(['message' => 'Có lỗi sảy ra khi upload ảnh'], 500);
    }

    public function medium(Request $request) {
        if($request->hasFile('attachments')) {
            $ext = $request->attachments[0]->getClientOriginalExtension();
            $name = \Str::uuid();
            $fileName = $name.'.'.$ext;
            $request->attachments[0]->move(public_path('/uploads'), $fileName);
            $image = Media::create(['filename' => $fileName]);
            return response()->json([
                'files' => [
                    ['url' => 'http://cms.baristaskill.vn:8080/uploads/'.$fileName]
                ]
            ]);
        }
        return response()->json(['message' => 'Có lỗi sảy ra khi upload ảnh'], 500);
    }

    public function delete(Request $request)
    {
        $data = Media::find($request->id);
        if(!isset($data)) {
            return response()->json(['message' => 'Không thể xóa ảnh'], 500);
        }

        $data->delete();
    }
}
