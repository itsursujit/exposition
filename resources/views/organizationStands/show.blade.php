@extends('layouts.app')

@section('content')
    @include('organizationStands.show_fields')

    <div class="form-group">
           <a href="{!! route('organizationStands.index') !!}" class="btn btn-default">Back</a>
    </div>
@endsection
