<table class="table table-responsive" id="organizationStands-table">
    <thead>
        <th>Image</th>
        <th>Organization Id</th>
        <th>Exposition Id</th>
        <th>Stand Id</th>
        <th>Stand Features</th>
        <th>Visitors Count</th>
        <th>Is Deleted</th>
        <th colspan="3">Action</th>
    </thead>
    <tbody>
    @foreach($organizationStands as $organizationStands)
        <tr>
            <td>{!! $organizationStands->image !!}</td>
            <td>{!! $organizationStands->organization_id !!}</td>
            <td>{!! $organizationStands->exposition_id !!}</td>
            <td>{!! $organizationStands->stand_id !!}</td>
            <td>{!! $organizationStands->stand_features !!}</td>
            <td>{!! $organizationStands->visitors_count !!}</td>
            <td>{!! $organizationStands->is_deleted !!}</td>
            <td>
                {!! Form::open(['route' => ['organizationStands.destroy', $organizationStands->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('organizationStands.show', [$organizationStands->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('organizationStands.edit', [$organizationStands->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>
