@extends('layouts.template')

@section('content')
    <div class="flex-center position-ref full-height">
        <div class="article">
            @foreach($articles as $article)
                <div class="col-md-12">
                    <h2>{{ $article->Title }}</h2>
                    <p>{{ $article->Description }}</p>
                    <p>
                        <a class="btn btn-default" href="{{ route('articleShow', ['id' => $article->id]) }}"
                          role="button">View Details</a>
                        <form action="{{ route('articleDelete', ['$article' => $article->id]) }}" method="post">
                            {{ method_field('DELETE') }}
                            {{ csrf_field() }}
                            <button type="submit" class="btn btn-danger">Delete </button>
                        </form>
                    </p>
                </div>
            @endforeach
        </div>
    </div>
@endsection
