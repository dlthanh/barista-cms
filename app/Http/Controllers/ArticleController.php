<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\CreateArticleRequest;
use App\Models\Article;
use Illuminate\Support\Facades\Auth;

class ArticleController extends Controller
{
    public function index()
    {
        $articles = Article::paginate(10);
        return view('article.index', ['articles' => $articles]);
    }
    public function getCreate()
    {
        return view('article.create');
    }

    public function postCreate(Request $request)
    {
        $content = explode('<div class="medium-insert-buttons"', $request->content)[0];

        $article = [
            'title' => $request->title,
            'slug' => str_slug($request->title, '-'),
            'thumbnal' => $request->thumbnail,
            'description' => $request->description,
            'content' => $content,
            'cat_id' => $request->cat_id,
            'user_id' => Auth::user()->id
        ];
        dd($article);
    }
}
