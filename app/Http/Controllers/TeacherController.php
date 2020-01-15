<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Teacher;
use App\Models\Subject;

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

    public function getUpdate($id)
    {
        $teacher = Teacher::find($id);
        if(!isset($teacher)) {
            return redirect()->route('teacher.index')->with('message', 'Không tìm thấy giảng viên có ID = '. $id);
        }
        return view('teacher.create');
    }

    public function postUpdate($id, Request $request)
    {
        Teacher::update($request->all());
        return redirect()->route('teacher.index')->with('message', 'Thêm giảng viên thành công');
    }
    
    public function delete($id)
    {
        $teacher = Teacher::find($id);
        if(!isset($teacher))
        {
            return redirect()->route('teacher.index')->with('message', 'Không tìm thấy giáo viên có ID = ' . $id);
        }
        $teacher->delete();
        $teacher->subjects->detach();
    }
}
