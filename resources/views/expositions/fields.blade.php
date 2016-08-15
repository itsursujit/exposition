<!-- Title Field -->
<div class="form-group col-sm-6">
    {!! Form::label('title', 'Title:') !!}
    {!! Form::text('title', null, ['class' => 'form-control']) !!}
</div>

<!-- Image Field -->
<div class="form-group col-sm-6">
    {!! Form::label('image', 'Image:') !!}
    {!! Form::text('image', null, ['class' => 'form-control']) !!}
</div>

<!-- Description Field -->
<div class="form-group col-sm-12 col-lg-12">
    {!! Form::label('description', 'Description:') !!}
    {!! Form::textarea('description', null, ['class' => 'form-control', 'rows' => '5']) !!}
</div>


<!-- Start Date Field -->
<div class="form-group col-sm-6">
    {!! Form::label('start_date', 'Start Date:') !!}
    {!! Form::date('start_date', null, ['class' => 'form-control']) !!}
</div>

<!-- End Date Field -->
<div class="form-group col-sm-6">
    {!! Form::label('end_date', 'End Date:') !!}
    {!! Form::date('end_date', null, ['class' => 'form-control']) !!}
</div>

<!-- Venue Name Field -->
<div class="form-group col-sm-6">
    {!! Form::label('venue_name', 'Venue Name:') !!}
    {!! Form::text('venue_name', null, ['class' => 'form-control']) !!}
</div>

<!-- Address Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('address_id', 'Address Id:') !!}
    {!! Form::text('address_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Booking Start Date Field -->
<div class="form-group col-sm-6">
    {!! Form::label('booking_start_date', 'Booking Start Date:') !!}
    {!! Form::date('booking_start_date', null, ['class' => 'form-control']) !!}
</div>

<!-- Booking End Date Field -->
<div class="form-group col-sm-6">
    {!! Form::label('booking_end_date', 'Booking End Date:') !!}
    {!! Form::date('booking_end_date', null, ['class' => 'form-control']) !!}
</div>

<!-- Is Live Field -->
<div class="form-group col-sm-6">
    {!! Form::label('is_live', 'Is Live:') !!}
    {!! Form::text('is_live', null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('expositions.index') !!}" class="btn btn-default">Cancel</a>
</div>
