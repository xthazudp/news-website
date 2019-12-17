<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function about()
			{
				return view('front.layout.master',['first_name'=>'Sudip','last_name'=>'Shrestha']);
			}
}
