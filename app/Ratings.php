<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ratings extends Model
{
  
    protected $table='ratings';
  
    protected $fillable = ['feedID', 'userID','rating'];
    public function user()
    {
        return $this->belongsTo('App\User', 'userID');
    }
}
