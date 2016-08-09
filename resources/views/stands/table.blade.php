<table class="table table-responsive" id="stands-table">
    <thead>
        <th>Exposition Id</th>
        <th>Title</th>
        <th>Length</th>
        <th>Breadth</th>
        <th>Feature Details</th>
        <th>Description</th>
        <th>Is Reserved</th>
        <th>Is Booked</th>
        <th>Price</th>
        <th colspan="3">Action</th>
    </thead>
    <tbody>
    @foreach($stands as $stand)
        <tr>
            <td>{!! $stand->exposition_id !!}</td>
            <td>{!! $stand->title !!}</td>
            <td>{!! $stand->length !!}</td>
            <td>{!! $stand->breadth !!}</td>
            <td>{!! $stand->feature_details !!}</td>
            <td>{!! $stand->description !!}</td>
            <td>{!! $stand->is_reserved !!}</td>
            <td>{!! $stand->is_booked !!}</td>
            <td>{!! $stand->price !!}</td>
            <td>
                {!! Form::open(['route' => ['stands.destroy', $stand->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('stands.show', [$stand->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('stands.edit', [$stand->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>
