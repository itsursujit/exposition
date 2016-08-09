@extends('layouts.app')

@section('content')
        <div class="row">
            <div class="col-sm-12">
                <h1 class="pull-left">Edit Order</h1>
            </div>
        </div>

        @include('core-templates::common.errors')

        <div class="row">
            {!! Form::model($order, ['route' => ['orders.update', $order->id], 'method' => 'patch']) !!}

            @include('orders.fields')

            {!! Form::close() !!}
        </div>
@endsection
