@extends('layouts.template')

@section('content')
    <div class="flex-center position-ref full-height">
        @if($article)
            <div class="article">
                <div class="col-md-4">
                    <h2>{{ $article->Title }}</h2>
                    <p>{{ $article->Description }}</p>
                    <p>{{ $article->Date }}</p>
                    <p>{{ $article->Author }}</p>
                </div>
            </div>
        @endif
    </div>
@endsection
