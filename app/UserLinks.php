<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserLinks extends Model
{
    protected $table='user_links';
    protected $fillable = ['links', 'userID'];
    public function user()
    {
        return $this->belongsTo('App\User', 'userID');
    }
}
