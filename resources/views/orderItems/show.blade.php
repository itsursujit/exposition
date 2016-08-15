@extends('layouts.app')

@section('content')
    @include('orderItems.show_fields')

    <div class="form-group">
           <a href="{!! route('orderItems.index') !!}" class="btn btn-default">Back</a>
    </div>
@endsection
