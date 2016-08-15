<!-- Order Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('order_id', 'Order Id:') !!}
    {!! Form::number('order_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Stand Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('stand_id', 'Stand Id:') !!}
    {!! Form::number('stand_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Is Cancelled Field -->
<div class="form-group col-sm-6">
    {!! Form::label('is_cancelled', 'Is Cancelled:') !!}
    {!! Form::number('is_cancelled', null, ['class' => 'form-control']) !!}
</div>

<!-- Is Deleted Field -->
<div class="form-group col-sm-6">
    {!! Form::label('is_deleted', 'Is Deleted:') !!}
    {!! Form::number('is_deleted', null, ['class' => 'form-control']) !!}
</div>

<!-- Status Field -->
<div class="form-group col-sm-6">
    {!! Form::label('status', 'Status:') !!}
    {!! Form::text('status', null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('orderItems.index') !!}" class="btn btn-default">Cancel</a>
</div>
