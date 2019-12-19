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
            'thumbnail' => $request->thumbnail,
            'description' => $request->description,
            'content' => $content,
            'cat_id' => $request->cat_id,
            'user_id' => Auth::user()->id
        ];
        Article::create($article);
        return redirect()->route('article.index')->with('message', 'Thêm tin tức thành công');
    }

    public function getUpdate($id)
    {
        $article = Article::find($id);
        if(!isset($article)) {
            return redirect()->route('article.index')->with('message', 'Không tìm thấy tin tức có ID = '. $id);
        }
        return view('article.update', ['article' => $article]);
    }

    public function postUpdate($id, Request $request)
    {   
        $data = Article::find($id);
        if(!isset($data)) {
            return redirect()->route('article.index')->with('message', 'Không tìm thấy tin tức có ID = '. $id);
        }

        $content = explode('<div class="medium-insert-buttons"', $request->content)[0];

        $article = [
            'title' => $request->title,
            'slug' => str_slug($request->title, '-'),
            'thumbnail' => $request->thumbnail,
            'description' => $request->description,
            'content' => $content,
            'cat_id' => $request->cat_id,
            'user_id' => Auth::user()->id
        ];

        $isUpdated = $data->update($article);

        if($isUpdated) {
            return redirect()->route('article.getUpdate', $id)
                ->with('message', 'Cập nhật tin tức thành công')
                ->with('article', $article);
        }
    }

    public function delete($id)
    {
        $article = Article::find($id);
        if(!isset($article)) {
            return redirect()->route('article.index')->with('message', 'Không tìm thấy tin tức có ID = '. $id);
        }
        $article->delete();
        return redirect()->route('article.index')->with('message', 'Xóa thành công tin tức "'. $article->title . '"');
    }
}
