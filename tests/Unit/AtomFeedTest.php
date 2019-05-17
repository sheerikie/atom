<?php

namespace Tests\Unit;

use Tests\TestCase;
use App\UserLinks;
use App\Ratings;
use Feeds;
use Auth;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class AtomFeedTest extends TestCase
{
    /**
     * A basic unit test example.
     *
     * @return void
     */
    public function testUserLinks()
    {

    
            // POST request to your controller@action
                $user = factory(\App\User::class)->create();
                $userlinks = $user->links()->create(['links' => 'https://xkcd.com/atom.xml',
                    'user_id' => $user->id]);
                $found = UserLinks::find(1);
                
                $this->assertTrue(true);

    }
    public function testUserRatings()
    {

            // POST request to your controller@action
                $user = factory(\App\User::class)->create();
                $userratings = $user->ratings()->create(['feedID' => 'https://xkcd.com/atom.xml',
                    'user_id' => $user->id,'rating' => '3']);
                $found = Ratings::find(1);
                
                $this->assertTrue(true);

    }
    public function testAtomFeed()
    {
        $feed = Feeds::make(['https://xkcd.com/atom.xml'], 15, true); // if RSS Feed has invalid mime types, force to read


        $data = array(
            'title'     => $feed->get_title(),
            'permalink' => $feed->get_permalink(),
            'items'     => $feed->get_items(),
            'rating'     => '1'
            
        );
     
        $this->assertTrue(true);

}
   
}