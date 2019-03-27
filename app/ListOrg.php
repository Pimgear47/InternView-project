<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ListOrg extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name_org', 'picture', 'description', 'address','type','bnf_money','bnf_car','bnf_house','rating'
    ];

    public function Review(){
        return $this->hasMany(Review::class,'org_id');
    }
}