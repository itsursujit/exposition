<table class="table table-responsive" id="orderItems-table">
    <thead>
        <th>Order Id</th>
        <th>Stand Id</th>
        <th>Is Cancelled</th>
        <th>Is Deleted</th>
        <th>Status</th>
        <th colspan="3">Action</th>
    </thead>
    <tbody>
    @foreach($orderItems as $orderItems)
        <tr>
            <td>{!! $orderItems->order_id !!}</td>
            <td>{!! $orderItems->stand_id !!}</td>
            <td>{!! $orderItems->is_cancelled !!}</td>
            <td>{!! $orderItems->is_deleted !!}</td>
            <td>{!! $orderItems->status !!}</td>
            <td>
                {!! Form::open(['route' => ['orderItems.destroy', $orderItems->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('orderItems.show', [$orderItems->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('orderItems.edit', [$orderItems->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>
