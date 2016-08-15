@extends('layouts.app')

@section('content')
    @include('expositions.show_fields')

    <div class="form-group">
           <a href="{!! route('expositions.index') !!}" class="btn btn-default">Back</a>
    </div>
@endsection
