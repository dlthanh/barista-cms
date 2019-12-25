<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Subject;

class SubjectController extends Controller
{
    public function index()
    {
        $subjects = Subject::paginate(20);
        return view('subject.index', ['subjects' => $subjects]);
    }

    public function getCreate()
    {
        return view('subject.create');
    }

    public function postCreate(Request $request)
    {
        $data = $request->all();
        $data['isActive'] = 0;
        $subject = Subject::create($data);
        return redirect()->route('subject.getUpdate.step2', $subject->id)
            ->with('isCreate', true)
            ->with('subject', $subject);
    }

    public function getUpdate($id)
    {
        // $course = Course::find($id);
        // if(!isset($course)) {
        //     return redirect()->route('course.index')->with('message', 'Không tìm thấy lịch khai giảng có ID = '. $id);
        // }
        // return view('course.update', ['course' => $course]);
    }

    public function postUpdate($id, Request $request)
    {   
        // $data = Course::find($id);
        // if(!isset($data)) {
        //     return redirect()->route('article.index')->with('message', 'Không tìm thấy lịch khai giảng có ID = '. $id);
        // }

        // $course = $request->all();

        // $isUpdated = $data->update($course);

        // if($isUpdated) {
        //     return redirect()->route('course.getUpdate', $id)
        //         ->with('message', 'Cập nhật lịch khai giảng thành công')
        //         ->with('course', $course);
        // }
    }

    public function getStep2($id)
    {
        $subject = Subject::find($id);
        if(!isset($subject)) {
            return redirect()->route('subject.index')->with('message', 'Không tìm thấy khóa học có ID = '. $id);
        }
        return view('subject.step2', ['subject' => $subject]);
    }

    public function postStep2($id, Request $request)
    {
        $data = Subject::find($id);
        if(!isset($data)) {
            return redirect()->route('subject.index')->with('message', 'Không tìm thấy khóa học có ID = '. $id);
        }

        $isUpdated = $data->update($request->all());

        if($isUpdated) {
            $subject = Subject::find($id);
            return redirect()->route('subject.getUpdate.step3', $subject->id)->with('subject', $subject);
        }
    }

    public function delete($id)
    {
        // $course = Course::find($id);
        // if(!isset($course)) {
        //     return redirect()->route('course.index')->with('message', 'Không tìm thấy lịch khai giảng có ID = '. $id);
        // }
        // $course->delete();
        // return redirect()->route('course.index')->with('message', 'Xóa thành công lịch khai giảng "'. $course->label . '"');
    }
}
