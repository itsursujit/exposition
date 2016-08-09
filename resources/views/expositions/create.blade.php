@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-sm-12">
            <h1 class="pull-left">Create New Expositions</h1>
        </div>
    </div>

    @include('core-templates::common.errors')

    <div class="row">
        {!! Form::open(['route' => 'expositions.store']) !!}

            @include('expositions.fields')

        {!! Form::close() !!}
    </div>
@endsection
