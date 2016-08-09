<!-- Exposition Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('exposition_id', 'Exposition Id:') !!}
    {!! Form::text('exposition_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Title Field -->
<div class="form-group col-sm-6">
    {!! Form::label('title', 'Title:') !!}
    {!! Form::text('title', null, ['class' => 'form-control']) !!}
</div>

<!-- Length Field -->
<div class="form-group col-sm-6">
    {!! Form::label('length', 'Length:') !!}
    {!! Form::text('length', null, ['class' => 'form-control']) !!}
</div>

<!-- Breadth Field -->
<div class="form-group col-sm-6">
    {!! Form::label('breadth', 'Breadth:') !!}
    {!! Form::text('breadth', null, ['class' => 'form-control']) !!}
</div>

<!-- Feature Details Field -->
<div class="form-group col-sm-12 col-lg-12">
    {!! Form::label('feature_details', 'Feature Details:') !!}
    {!! Form::textarea('feature_details', null, ['class' => 'form-control', 'rows' => '5']) !!}
</div>


<!-- Description Field -->
<div class="form-group col-sm-12 col-lg-12">
    {!! Form::label('description', 'Description:') !!}
    {!! Form::textarea('description', null, ['class' => 'form-control', 'rows' => '5']) !!}
</div>


<!-- Is Reserved Field -->
<div class="form-group col-sm-6">
    {!! Form::label('is_reserved', 'Is Reserved:') !!}
    {!! Form::text('is_reserved', null, ['class' => 'form-control']) !!}
</div>

<!-- Is Booked Field -->
<div class="form-group col-sm-6">
    {!! Form::label('is_booked', 'Is Booked:') !!}
    {!! Form::text('is_booked', null, ['class' => 'form-control']) !!}
</div>

<!-- Price Field -->
<div class="form-group col-sm-6">
    {!! Form::label('price', 'Price:') !!}
    {!! Form::text('price', null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('stands.index') !!}" class="btn btn-default">Cancel</a>
</div>
