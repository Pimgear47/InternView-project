<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Announcement extends Model
{
    protected $fillable = [
        'ann_id', 'name_org', 'announcer', 'detail','contact_person','tel_number','email'
    ];

    public function Position(){
        return $this->hasMany(Position::class,'ann_id');
    }
}
