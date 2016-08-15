<table class="table table-responsive" id="organizations-table">
    <thead>
        <th>Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Logo</th>
        <th>Admin Name</th>
        <th>Admin Email</th>
        <th colspan="3">Action</th>
    </thead>
    <tbody>
    @foreach($organizations as $organization)
        <tr>
            <td>{!! $organization->name !!}</td>
            <td>{!! $organization->email !!}</td>
            <td>{!! $organization->phone !!}</td>
            <td>{!! $organization->logo !!}</td>
            <td>{!! $organization->admin_name !!}</td>
            <td>{!! $organization->admin_email !!}</td>
            <td>
                {!! Form::open(['route' => ['organizations.destroy', $organization->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('organizations.show', [$organization->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('organizations.edit', [$organization->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>
