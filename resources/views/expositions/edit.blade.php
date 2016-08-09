@extends('layouts.app')

@section('content')
        <div class="row">
            <div class="col-sm-12">
                <h1 class="pull-left">Edit Expositions</h1>
            </div>
        </div>

        @include('core-templates::common.errors')

        <div class="row">
            {!! Form::model($expositions, ['route' => ['expositions.update', $expositions->id], 'method' => 'patch']) !!}

            @include('expositions.fields')

            {!! Form::close() !!}
        </div>
@endsection
