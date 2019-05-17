<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Atom Challenge</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
        
        <meta name="csrf-token" content="{{ csrf_token() }}"> 
        
        <!-- Styles -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
            *{
    margin: 0;
    padding: 0;
}
.rate {
    float: left;
    height: 46px;
    padding: 0 10px;
}
.rate:not(:checked) > input {
    position:absolute;
    top:-9999px;
}
.rate:not(:checked) > label {
    float:right;
    width:1em;
    overflow:hidden;
    white-space:nowrap;
    cursor:pointer;
    font-size:30px;
    color:#ccc;
}
.rate:not(:checked) > label:before {
    content: '★ ';
}
.rate > input:checked ~ label {
    color: #ffc700;    
}
.rate:not(:checked) > label:hover,
.rate:not(:checked) > label:hover ~ label {
    color: #deb217;  
}
.rate > input:checked + label:hover,
.rate > input:checked + label:hover ~ label,
.rate > input:checked ~ label:hover,
.rate > input:checked ~ label:hover ~ label,
.rate > label:hover ~ input:checked ~ label {
    color: #c59b08;
}
        </style>
    </head>
    <body>
        <div class="">
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ route('login') }}">Login</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}">Register</a>
                        @endif
                    @endauth
                </div>
            @endif

            <div class="content">
                <div class="title m-b-md">
                  Atom Feed
                </div>
                @if(Auth::user())
            <div class="header">
    <h1><a href="{{ $permalink }}">{{ $title }}</a></h1>
  </div>

  @foreach ($items as $item )
      
  <div class="item">
    <h2><a href="{{ $item->get_permalink() }}">{{ $item->get_title() }}</a></h2>
    <p>{!! $item->get_description() !!}</p>
  
    <p><small>Posted on {{ $item->get_date('j F Y | g:i a') }}</small></p>
  
  </div>

  @if(strpos($rating,$item->get_title())) 
  @for($i=0;$i<$rating->count();$i++)
  @if($rating[$i]->feedID==$item->get_title())
  
  <p>You rated {{$rating[$i]->rating}}</p>
 
@endif
@endfor 
@else
  <form action="{{ route('rating') }}" method="post" id="rating" name="rating">
    {{ csrf_token() }}

        <input type="hidden" name="feed_id" value="{{ $item->get_title() }}">
      <div class="rate">
        <input type="radio" id="star5" name="rate" value="5" onclick="myRate()" />
        <label for="star5" title="text">5 stars</label>
        <input type="radio" id="star4" name="rate" value="4" onclick="myRate()"/>
        <label for="star4" title="text">4 stars</label>
        <input type="radio" id="star3" name="rate" value="3" onclick="myRate()" />
        <label for="star3" title="text">3 stars</label>
        <input type="radio" id="star2" name="rate" value="2" onclick="myRate()" />
        <label for="star2" title="text">2 stars</label>
        <input type="radio" id="star1" name="rate" value="1" onclick="myRate()" />
        <label for="star1" title="text">1 star</label>
    </div>
    </form>
    @endif
    <br>
    <br>
    <hr>
    
  @endforeach
 
@else
<a href="/login" class="btn btn-warning" role="button">Login To Rate</a>

@endif                                                             
            </div>
        </div>
    <script>

   function myRate() {
    document.getElementById("rating").submit();
    alert('Rating Successful');
}
</script>
    </body>
</html>
