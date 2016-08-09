@extends('layouts.app')

@section('content')
        <div class="row">
            <div class="col-sm-12">
                <h1 class="pull-left">Edit OrganizationStands</h1>
            </div>
        </div>

        @include('core-templates::common.errors')

        <div class="row">
            {!! Form::model($organizationStands, ['route' => ['organizationStands.update', $organizationStands->id], 'method' => 'patch']) !!}

            @include('organizationStands.fields')

            {!! Form::close() !!}
        </div>
@endsection
