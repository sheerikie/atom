<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\UserLinks;
use Faker\Generator as Faker;

$factory->define(UserLinks::class, function (Faker $faker) {
    return [
        'links' => $faker->link,
        'userID' => $faker->id,
      
    ];
});
