@extends('layouts.app')

@section('content')
        <div class="row">
            <div class="col-sm-12">
                <h1 class="pull-left">Edit Stand</h1>
            </div>
        </div>

        @include('core-templates::common.errors')

        <div class="row">
            {!! Form::model($stand, ['route' => ['stands.update', $stand->id], 'method' => 'patch']) !!}

            @include('stands.fields')

            {!! Form::close() !!}
        </div>
@endsection
