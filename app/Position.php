<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Position extends Model
{
    protected $fillable = [
        'pos_id', 'ann_id', 'position_name', 'quality', 'duty'
    ];

    public function Announcement(){
        return $this->belongsTo(Announcement::class,'ann_id');
    }
}
