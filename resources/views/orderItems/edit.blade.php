@extends('layouts.app')

@section('content')
        <div class="row">
            <div class="col-sm-12">
                <h1 class="pull-left">Edit OrderItems</h1>
            </div>
        </div>

        @include('core-templates::common.errors')

        <div class="row">
            {!! Form::model($orderItems, ['route' => ['orderItems.update', $orderItems->id], 'method' => 'patch']) !!}

            @include('orderItems.fields')

            {!! Form::close() !!}
        </div>
@endsection
