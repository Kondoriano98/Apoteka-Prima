<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
Use App\Post;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $postovi = Post::orderBy('id','desc')->paginate(5);
        return view('home')->with('postovi', $postovi);
    }
}
