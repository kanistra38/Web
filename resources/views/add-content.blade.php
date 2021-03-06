@extends('layouts.template')

@section('content')
    <div class="flex-center position-ref full-height">
        <div class="col-md-6">
            <form method="post" action="{{ route('articleStore') }}">
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" class="form-control" id="title" name="title">
                </div>
                <div class="form-group">
                    <label for="Description">Description</label>
                    <textarea type="" class="form-control" id="Description" name="description"></textarea>
                </div>
                <input type="submit" class="btn btn-default">

                {{ csrf_field() }}
            </form>
        </div>
    </div>
@endsection
