<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Subject;
use App\Models\Teacher;
use App\Http\Requests\SubjectRequest;

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

    public function postCreate(SubjectRequest $request)
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
        $subject = Subject::find($id);
        if(!isset($subject)) {
            return redirect()->route('subject.index')->with('message', 'Không tìm thấy khóa học có ID = '. $id);
        }
        return view('subject.update', ['subject' => $subject]);
    }

    public function postUpdate($id, SubjectRequest $request)
    {   
        $data = Subject::find($id);
        if(!isset($data)) {
            return redirect()->route('subject.index')->with('message', 'Không tìm thấy khóa học có ID = '. $id);
        }

        $subject = $request->all();

        $isUpdated = $data->update($subject);

        if($isUpdated) {
            return redirect()->route('subject.getUpdate', $id)
                ->with('message', 'Cập nhật khóa học thành công')
                ->with('subject', $subject);
        }
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

    public function getStep3($id)
    {
        $subject = Subject::find($id);
        if(!isset($subject)) {
            return redirect()->route('subject.index')->with('message', 'Không tìm thấy khóa học có ID = '. $id);
        }
        return view('subject.step3', ['subject' => $subject]);
    }

    public function postStep3($id, Request $request)
    {
        $data = Subject::find($id);
        if(!isset($data)) {
            return redirect()->route('subject.index')->with('message', 'Không tìm thấy khóa học có ID = '. $id);
        }
        
        $isUpdated = $data->update([
            'content' => $request->content,
            'isActive' => 1
        ]);

        if($isUpdated) {
            $subject = Subject::find($id);
            return redirect()->route('subject.getUpdate.step4', $subject->id)->with('subject', $subject);
        }
    }

    public function getStep4($id)
    {
        $subject = Subject::find($id);
        if(!isset($subject)) {
            return redirect()->route('subject.index')->with('message', 'Không tìm thấy khóa học có ID = '. $id);
        }
        $teachers = Teacher::all();
        return view('subject.step4', ['subject' => $subject, 'teachers' => $teachers]);
    }

    public function postStep4($id, Request $request)
    {
        $subject = Subject::find($id);
        if(!isset($subject)) {
            return redirect()->route('subject.index')->with('message', 'Không tìm thấy khóa học có ID = '. $id);
        }

        $subject->teachers()->sync($request->teacher_id);
        return redirect()->route('subject.getUpdate', $id)->with('message', 'Cập nhập khóa học thành công');
    }

    public function delete($id)
    {
        $subject = Subject::find($id);
        if(!isset($subject)) {
            return redirect()->route('teacher.index')->with('message', 'Không tìm thấy khóa học có ID = '. $id);
        }
        $subject->delete();
        return redirect()->route('teacher.index')->with('message', 'Xóa thành công khóa học "'. $subject->title . '"');
    }
}
