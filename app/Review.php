<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    protected $fillable = [
        'org_id', 'user_id', 'description', 'rating'
    ];

    public function ListOrg(){
        return $this->belongsTo(ListOrg::class,'org_id');
    }

    public function User(){
        return $this->belongsTo(User::class,'user_id');
    }
}
