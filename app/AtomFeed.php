<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AtomFeed extends Model
{
    protected $table='atom_feeds';
  
    protected $fillable = ['feed_id', 'title','url','content','pub_date'];

}
