@extends('layouts.template')

@section('content')
    <div class="flex-center position-ref full-height">
        @if($article)
                <div class="col-md-12">
                    <h2>{{ $article->Title }}</h2>
                    <p>{{ $article->Description }}</p>
                    <p>{{ $article->created_at }}</p>
                </div>
        @endif
    </div>
@endsection
