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
        'name_org', 'picture', 'description', 'address','bnf_money','bnf_car','bnf_house','software','hardware','network','rating'
    ];
}
