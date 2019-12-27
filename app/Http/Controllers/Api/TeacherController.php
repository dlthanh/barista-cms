<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Teacher;
use App\Models\Subject;

class TeacherController extends Controller
{
    public function subject($id)
    {
        $subject = Subject::find($id);
        if(!isset($subject)) {
            return response()->json(['message' => 'Khóa học không tồn tại']);
        }

        $teachers = $subject->teachers;
        return response()->json($teachers);
    }
}
