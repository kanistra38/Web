<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Article;

class IndexController extends Controller {
    public function index() {
        $articles = Article::all();
        return view('articles')->with('articles', $articles);
    }

    public function page() {
        return view('firstPage');
    }

    public function show($id) {
        $article = Article::find($id);
        return view('article-content')->with('article', $article);
    }

    public function add() {
        return view('add-content');
    }

    public function store(Request $request) {
        $this->validate($request, [
            'title' => 'required|max:255',
            'description' => 'required'
        ]);

        $data = $request->all();

        $article = new Article;
        $article->fill($data);

        $article->save();

        return redirect("/");
    }
}
