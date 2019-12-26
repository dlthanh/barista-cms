<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Teacher;

class TeacherController extends Controller
{
    public function index()
    {
        $teachers = Teacher::all();
        return view('teacher.index', ['teachers' => $teachers]);
    }

    public function getCreate()
    {
        return view('teacher.create');
    }

    public function postCreate(Request $request)
    {
        Teacher::create($request->all());
        return redirect()->route('teacher.index')->with('message', 'Thêm giảng viên thành công');
    }
}
