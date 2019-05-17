<?php

namespace App\Http\Controllers;

use App\AtomFeed;
use App\UserLinks;
use Illuminate\Http\Request;
use Feeds;
use View;
use DB;
use Auth;

class AtomFeedController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
     
        return View::make('atom');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $request->validate([
            'atom-link' => 'required',
           
        ]);
        $atom=$request->get('atom-link');
      
        $feed = Feeds::make([$atom], 15, true); // if RSS Feed has invalid mime types, force to read


 $rating = DB::table('ratings')
                ->join('atom_feeds', 'ratings.feedID', '=', 'atom_feeds.title')
                ->select('feedID','rating')
                ->where('ratings.userID', Auth::id())
                ->get();
                
                $userLink= New UserLinks; 
                $userLink->userID = Auth::id();
                $userLink->links= $atom;
                $userLink->save();
       
    $data = array(
        'title'     => $feed->get_title(),
        'permalink' => $feed->get_permalink(),
        'items'     => $feed->get_items(),
        'rating'     => $rating
        
    );
 
   foreach ($feed->get_items() as $item) {

    $feed_id=$item->get_id();
   

    $feed =AtomFeed::where('feed_id', $feed_id)->get();
    
    


       if($feed->count()==0){
    $atom= New AtomFeed; 
    $atom->title = $item->get_title();
    $atom->url = $item->get_permalink();
    $atom->content = $item->get_content();
   // $author = $item->get_author();
    $atom->feed_id = $item->get_id();
    $atom->pub_date=date('r', gmstrftime(strtotime($item->get_date())));
    $atom->save();
       }
      
      
   }
   $atom=AtomFeed::all();
   $count=$atom->count();
 
  
    return View::make('welcome', $data, compact('rating','count'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\AtomFeed  $atomFeed
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request,AtomFeed $atomFeed)
    {
        return $atomFeed;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\AtomFeed  $atomFeed
     * @return \Illuminate\Http\Response
     */
    public function edit(AtomFeed $atomFeed)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\AtomFeed  $atomFeed
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, AtomFeed $atomFeed)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\AtomFeed  $atomFeed
     * @return \Illuminate\Http\Response
     */
    public function destroy(AtomFeed $atomFeed)
    {
        //
    }
}
