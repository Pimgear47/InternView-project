<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Announcement extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id','title', 'name_org' , 'announcer', 'detail','address','contact_person','tel_number','email'
    ];
}