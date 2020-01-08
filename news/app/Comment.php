<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    public function post(){
        return $this->belongsTo('App\Post','post_id','id');
    }

    public function creator(){
        return $this->belongsTo('App\User','created_by','id');
    }
}
