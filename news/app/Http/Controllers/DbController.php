<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class DbController extends Controller
{
    public function index(){
        // $all = DB::table('employee')->select('name','city','age')->get();
        // $all = DB::table('employee')->pluck('email','city');
        // dd($all);
        // $single = DB::table('employee')->first();
        // dd($single);
        // $order = DB::table('employee')->orderBy('id','DESC')->get();
        // dd($order);
        // $limit = DB::table('employee')->orderBy('id','DESC')->limit(2)->get();
        // dd($limit);
        $count = DB::table('employee')->count();
        dd($count);
    }

    public function joining(){
        $result = DB::table('order')
                ->join('user','user.id','=','order.user_id')
                ->select('user.name','order.id','order.amount','order_date')
                ->where('status','0')
                ->get();
                dd($result);
    }
}
