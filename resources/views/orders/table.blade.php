<table class="table table-responsive" id="orders-table">
    <thead>
        <th>Order Date</th>
        <th>Exposition Id</th>
        <th>Notes</th>
        <th>Status</th>
        <th>Amount</th>
        <th>Transaction Id</th>
        <th>Organization Id</th>
        <th>Is Payment Completed</th>
        <th>Payment Transaction Code</th>
        <th>Is Deleted</th>
        <th colspan="3">Action</th>
    </thead>
    <tbody>
    @foreach($orders as $order)
        <tr>
            <td>{!! $order->order_date !!}</td>
            <td>{!! $order->exposition_id !!}</td>
            <td>{!! $order->notes !!}</td>
            <td>{!! $order->status !!}</td>
            <td>{!! $order->amount !!}</td>
            <td>{!! $order->transaction_id !!}</td>
            <td>{!! $order->organization_id !!}</td>
            <td>{!! $order->is_payment_completed !!}</td>
            <td>{!! $order->payment_transaction_code !!}</td>
            <td>{!! $order->is_deleted !!}</td>
            <td>
                {!! Form::open(['route' => ['orders.destroy', $order->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('orders.show', [$order->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('orders.edit', [$order->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>
