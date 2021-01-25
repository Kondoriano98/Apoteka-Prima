<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
Use App\Post;
class PagesController extends Controller
{
    public function pocetna(){
        $postovi = Post::orderBy('id','desc')->paginate(5);
        return view('pages.pocetna')->with('postovi', $postovi);
        }





        public function onama(){
            $naslov="O nama";
            return view('pages.onama',compact('naslov'));
        }
        public function kontakt(){
            $naslov="O nama";
            return view('pages.kontakt',compact('naslov'));
        }
       
}
