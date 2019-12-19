<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Course;

class CourseController extends Controller
{
    public function detail($month, $year)
    {
        $courses = Course::where([
            ['month', '=', $month],
            ['year', '=', $year]
        ])->get()->toArray();
        
        $data = [];
        foreach($courses as $course) {
            $courseJson = [
                'dot' => 'red',
                'dates' => [$course["date"].'/'.$course["month"].'/'.$course["year"]],
                'popover' => [
                    'label' => $course["label"]
                ]
            ];
            $data[] = $courseJson;
        }
        return response()->json($data);
    }
}
