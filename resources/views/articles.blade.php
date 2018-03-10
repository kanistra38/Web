@extends('layouts.template')

@section('content')
    <div class="flex-center position-ref full-height">
        <div class="article">
            @foreach($articles as $article)
                <div class="col-md-4">
                    <h2>{{ $article->Title }}</h2>
                    <p>{{ $article->Description }}</p>
                    <p><a class="btn btn-default" href="{{ route('articleShow', ['id' => $article->id]) }}"
                          role="button">View Details</a></p>
                </div>
            @endforeach
        </div>
    </div>
@endsection
