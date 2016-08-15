@extends('layouts.app')

@section('content')
    @include('orders.show_fields')

    <div class="form-group">
           <a href="{!! route('orders.index') !!}" class="btn btn-default">Back</a>
    </div>
@endsection
