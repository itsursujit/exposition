<!-- Image Field -->
<div class="form-group col-sm-6">
    {!! Form::label('image', 'Image:') !!}
    {!! Form::text('image', null, ['class' => 'form-control']) !!}
</div>

<!-- Organization Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('organization_id', 'Organization Id:') !!}
    {!! Form::number('organization_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Exposition Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('exposition_id', 'Exposition Id:') !!}
    {!! Form::number('exposition_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Stand Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('stand_id', 'Stand Id:') !!}
    {!! Form::number('stand_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Stand Features Field -->
<div class="form-group col-sm-12 col-lg-12">
    {!! Form::label('stand_features', 'Stand Features:') !!}
    {!! Form::textarea('stand_features', null, ['class' => 'form-control', 'rows' => '5']) !!}
</div>


<!-- Is Deleted Field -->
<div class="form-group col-sm-6">
    {!! Form::label('is_deleted', 'Is Deleted:') !!}
    {!! Form::number('is_deleted', null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('organizationStands.index') !!}" class="btn btn-default">Cancel</a>
</div>
