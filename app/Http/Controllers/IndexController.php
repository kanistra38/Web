<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Article;

class IndexController extends Controller {
    public function index() {
        return view('welcome');
    }

    public function page() {
        return view('firstPage');
    }

    public function articles() {
        $articles = Article::all();
        return view('articles')->with('articles', $articles);
    }
}
