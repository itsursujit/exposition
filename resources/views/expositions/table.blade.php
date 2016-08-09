<table class="table table-responsive" id="expositions-table">
    <thead>
        <th>Title</th>
        <th>Image</th>
        <th>Description</th>
        <th>Start Date</th>
        <th>End Date</th>
        <th>Venue Name</th>
        <th>Address Id</th>
        <th>Booking Start Date</th>
        <th>Booking End Date</th>
        <th>Is Live</th>
        <th>Is Deleted</th>
        <th colspan="3">Action</th>
    </thead>
    <tbody>
    @foreach($expositions as $expositions)
        <tr>
            <td>{!! $expositions->title !!}</td>
            <td>{!! $expositions->image !!}</td>
            <td>{!! $expositions->description !!}</td>
            <td>{!! $expositions->start_date !!}</td>
            <td>{!! $expositions->end_date !!}</td>
            <td>{!! $expositions->venue_name !!}</td>
            <td>{!! $expositions->address_id !!}</td>
            <td>{!! $expositions->booking_start_date !!}</td>
            <td>{!! $expositions->booking_end_date !!}</td>
            <td>{!! $expositions->is_live !!}</td>
            <td>{!! $expositions->is_deleted !!}</td>
            <td>
                {!! Form::open(['route' => ['expositions.destroy', $expositions->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('expositions.show', [$expositions->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('expositions.edit', [$expositions->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>
