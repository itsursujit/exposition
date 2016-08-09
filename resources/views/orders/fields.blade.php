<!-- Order Date Field -->
<div class="form-group col-sm-6">
    {!! Form::label('order_date', 'Order Date:') !!}
    {!! Form::date('order_date', null, ['class' => 'form-control']) !!}
</div>

<!-- Exposition Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('exposition_id', 'Exposition Id:') !!}
    {!! Form::text('exposition_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Notes Field -->
<div class="form-group col-sm-12 col-lg-12">
    {!! Form::label('notes', 'Notes:') !!}
    {!! Form::textarea('notes', null, ['class' => 'form-control', 'rows' => '5']) !!}
</div>


<!-- Status Field -->
<div class="form-group col-sm-6">
    {!! Form::label('status', 'Status:') !!}
    {!! Form::text('status', null, ['class' => 'form-control']) !!}
</div>

<!-- Amount Field -->
<div class="form-group col-sm-6">
    {!! Form::label('amount', 'Amount:') !!}
    {!! Form::text('amount', null, ['class' => 'form-control']) !!}
</div>

<!-- Transaction Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('transaction_id', 'Transaction Id:') !!}
    {!! Form::text('transaction_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Organization Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('organization_id', 'Organization Id:') !!}
    {!! Form::text('organization_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Is Payment Completed Field -->
<div class="form-group col-sm-6">
    {!! Form::label('is_payment_completed', 'Is Payment Completed:') !!}
    {!! Form::text('is_payment_completed', null, ['class' => 'form-control']) !!}
</div>

<!-- Payment Transaction Code Field -->
<div class="form-group col-sm-6">
    {!! Form::label('payment_transaction_code', 'Payment Transaction Code:') !!}
    {!! Form::text('payment_transaction_code', null, ['class' => 'form-control']) !!}
</div>

<!-- Is Deleted Field -->
<div class="form-group col-sm-6">
    {!! Form::label('is_deleted', 'Is Deleted:') !!}
    {!! Form::text('is_deleted', null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('orders.index') !!}" class="btn btn-default">Cancel</a>
</div>
