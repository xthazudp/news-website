<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Post;
use App\Category;


class ListingPageController extends Controller
{

  public function index(){
    return view('front.listing');
  }

  public function listing($id){
    $display = Post::with(['comments','category','creator'])->where('status',1)->where('category_id',$id)->orWhere('created_by',$id)->orderBy('id','DESC')->paginate(3);
    return view('front.listing',compact('display'));
  }
 

//   public function listing1($id){
// $posts = Post::with(['comments','category','creator'])->where('status',1)->where('category_id',$id)->orderBy('id','DESC')->paginate(5);
// return view('front.listing',compact('posts'));
// }

}