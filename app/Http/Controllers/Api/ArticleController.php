<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Article;

class ArticleController extends Controller
{
    public function group($id)
    {
        $articles = Article::where('cat_id', '=', $id)->orderBy('id', 'DESC')->take(12)->get();
        return response()->json($articles);
    }

    public function detail($id)
    {
        $article = Article::find($id);
        if(!isset($article)) {
            return response()->json(['message' => 'Không có bài viết này'], 404);
        }
        return response()->json($article);
    }
}
