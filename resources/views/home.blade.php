@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    @if (session('success'))
                    <div class="alert alert-success" role="alert">
                        {{ session('success') }}
                     
                    </div>
                @endif

                    You are logged in!
                    <form action="{{ route('link') }}" method="post">
                        <input type="text" name="atom-link" value="">
                        <input type="submit" value="submit">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
