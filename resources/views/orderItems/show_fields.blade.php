<!-- Id Field -->
<div class="form-group">
    {!! Form::label('id', 'Id:') !!}
    <p>{!! $orderItems->id !!}</p>
</div>

<!-- Order Id Field -->
<div class="form-group">
    {!! Form::label('order_id', 'Order Id:') !!}
    <p>{!! $orderItems->order_id !!}</p>
</div>

<!-- Stand Id Field -->
<div class="form-group">
    {!! Form::label('stand_id', 'Stand Id:') !!}
    <p>{!! $orderItems->stand_id !!}</p>
</div>

<!-- Is Cancelled Field -->
<div class="form-group">
    {!! Form::label('is_cancelled', 'Is Cancelled:') !!}
    <p>{!! $orderItems->is_cancelled !!}</p>
</div>

<!-- Is Deleted Field -->
<div class="form-group">
    {!! Form::label('is_deleted', 'Is Deleted:') !!}
    <p>{!! $orderItems->is_deleted !!}</p>
</div>

<!-- Status Field -->
<div class="form-group">
    {!! Form::label('status', 'Status:') !!}
    <p>{!! $orderItems->status !!}</p>
</div>

