<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Course;

class CourseController extends Controller
{
    public function detail($month, $year)
    {
        $nextMonth = $month == 12 ? 1 : $month + 1;
        $year = $month == 12 ? [$year, $year + 1] : [$year];
        $courses = Course::whereIn('month', [$month, $nextMonth])
            ->whereIn('year', $year)
            ->get()->toArray();
        
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
