<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Course;

class CourseController extends Controller
{
    public function index()
    {
        $courses = Course::paginate(20);
        return view('course.index', ['courses' => $courses]);
    }

    public function getCreate()
    {
        return view('course.create');
    }

    public function postCreate(Request $request)
    {
        $data['date'] = $request->date;
        $data['month'] = $request->month;
        $data['year'] = $request->year;

        $labels = explode(',', $request->label);
        foreach ($labels as $label) {
            $data['label'] = $label;
            Course::create($data);
        }
        return redirect()->route('course.index')->with('message', 'Thêm lịch khai giảng thành công');
    }

    public function getUpdate($id)
    {
        $course = Course::find($id);
        if(!isset($course)) {
            return redirect()->route('course.index')->with('message', 'Không tìm thấy lịch khai giảng có ID = '. $id);
        }
        return view('course.update', ['course' => $course]);
    }

    public function postUpdate($id, Request $request)
    {   
        $data = Course::find($id);
        if(!isset($data)) {
            return redirect()->route('article.index')->with('message', 'Không tìm thấy lịch khai giảng có ID = '. $id);
        }

        $course = $request->all();

        $isUpdated = $data->update($course);

        if($isUpdated) {
            return redirect()->route('course.getUpdate', $id)
                ->with('message', 'Cập nhật lịch khai giảng thành công')
                ->with('course', $course);
        }
    }

    public function delete($id)
    {
        $course = Course::find($id);
        if(!isset($course)) {
            return redirect()->route('course.index')->with('message', 'Không tìm thấy lịch khai giảng có ID = '. $id);
        }
        $course->delete();
        return redirect()->route('course.index')->with('message', 'Xóa thành công lịch khai giảng "'. $course->label . '"');
    }
}
