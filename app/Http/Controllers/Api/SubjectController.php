<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Subject;

class SubjectController extends Controller
{
    public function list()
    {
        $subjects = Subject::where('isActive', '=', 1)->orderBy('id', 'DESC')->get();
        return response()->json($subjects);
    }

    public function home()
    {
        $subjects = Subject::where('isActive', '=', 1)
                            ->where('isHome', '=', 1)
                            ->orderBy('id', 'DESC')
                            ->take(3)->get();
        return response()->json($subjects);
    }

    public function detail($id)
    {
        $subject = Subject::find($id);
        if(!isset($subject)) {
            return response()->json(['message' => 'Khóa học không tồn tại'], 404);
        }
        return response()->json($subject);
    }
}
