@extends('layouts.app')

@section('content')
    @include('organizations.show_fields')

    <div class="form-group">
           <a href="{!! route('organizations.index') !!}" class="btn btn-default">Back</a>
    </div>
@endsection
