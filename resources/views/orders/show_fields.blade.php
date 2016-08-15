<!-- Id Field -->
<div class="form-group">
    {!! Form::label('id', 'Id:') !!}
    <p>{!! $order->id !!}</p>
</div>

<!-- Order Date Field -->
<div class="form-group">
    {!! Form::label('order_date', 'Order Date:') !!}
    <p>{!! $order->order_date !!}</p>
</div>

<!-- Exposition Id Field -->
<div class="form-group">
    {!! Form::label('exposition_id', 'Exposition Id:') !!}
    <p>{!! $order->exposition_id !!}</p>
</div>

<!-- Notes Field -->
<div class="form-group">
    {!! Form::label('notes', 'Notes:') !!}
    <p>{!! $order->notes !!}</p>
</div>

<!-- Status Field -->
<div class="form-group">
    {!! Form::label('status', 'Status:') !!}
    <p>{!! $order->status !!}</p>
</div>

<!-- Amount Field -->
<div class="form-group">
    {!! Form::label('amount', 'Amount:') !!}
    <p>{!! $order->amount !!}</p>
</div>

<!-- Transaction Id Field -->
<div class="form-group">
    {!! Form::label('transaction_id', 'Transaction Id:') !!}
    <p>{!! $order->transaction_id !!}</p>
</div>

<!-- Organization Id Field -->
<div class="form-group">
    {!! Form::label('organization_id', 'Organization Id:') !!}
    <p>{!! $order->organization_id !!}</p>
</div>

<!-- Is Payment Completed Field -->
<div class="form-group">
    {!! Form::label('is_payment_completed', 'Is Payment Completed:') !!}
    <p>{!! $order->is_payment_completed !!}</p>
</div>

<!-- Payment Transaction Code Field -->
<div class="form-group">
    {!! Form::label('payment_transaction_code', 'Payment Transaction Code:') !!}
    <p>{!! $order->payment_transaction_code !!}</p>
</div>

<!-- Is Deleted Field -->
<div class="form-group">
    {!! Form::label('is_deleted', 'Is Deleted:') !!}
    <p>{!! $order->is_deleted !!}</p>
</div>

<!-- Created At Field -->
<div class="form-group">
    {!! Form::label('created_at', 'Created At:') !!}
    <p>{!! $order->created_at !!}</p>
</div>

<!-- Updated At Field -->
<div class="form-group">
    {!! Form::label('updated_at', 'Updated At:') !!}
    <p>{!! $order->updated_at !!}</p>
</div>

