<!-- Name Field -->
<div class="form-group col-sm-6">
    {!! Form::label('name', 'Name:') !!}
    {!! Form::text('name', null, ['class' => 'form-control']) !!}
</div>

<!-- Email Field -->
<div class="form-group col-sm-6">
    {!! Form::label('email', 'Email:') !!}
    {!! Form::email('email', null, ['class' => 'form-control']) !!}
</div>

<!-- Phone Field -->
<div class="form-group col-sm-6">
    {!! Form::label('phone', 'Phone:') !!}
    {!! Form::text('phone', null, ['class' => 'form-control']) !!}
</div>

<!-- Logo Field -->
<div class="form-group col-sm-6">
    {!! Form::label('logo', 'Logo:') !!}
    {!! Form::text('logo', null, ['class' => 'form-control']) !!}
</div>

<!-- Admin Name Field -->
<div class="form-group col-sm-6">
    {!! Form::label('admin_name', 'Admin Name:') !!}
    {!! Form::text('admin_name', null, ['class' => 'form-control']) !!}
</div>

<!-- Admin Email Field -->
<div class="form-group col-sm-6">
    {!! Form::label('admin_email', 'Admin Email:') !!}
    {!! Form::email('admin_email', null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('organizations.index') !!}" class="btn btn-default">Cancel</a>
</div>
