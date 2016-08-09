@extends('layouts.app')

@section('content')
    @include('stands.show_fields')

    <div class="form-group">
           <a href="{!! route('stands.index') !!}" class="btn btn-default">Back</a>
    </div>
@endsection
