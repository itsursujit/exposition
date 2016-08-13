@if($ajax)
    @foreach($stands as $key => $stand)
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h3>{{ $stand->title }} - <small>{{ $stand->name!=''?$stand->name:'$'.$stand->price }}
                <br>
            @if($stand->is_booked)
                <span class="label label-danger">Booked</span>
            @elseif($stand->is_reserved)
                <span class="label label-warning">Reserved</span>
            @else
                    <span class="label label-success">Available</span>
            @endif
        </small></h3>
    </div>
    @if($stand->is_booked)
        <div class="modal-body bg-danger">
    @elseif($stand->is_reserved)
        <div class="modal-body bg-warning">
    @else
        <div class="modal-body bg-default">
    @endif

        @if($stand->is_booked)
            <div class="col-lg-12">
                <img src="{{ $stand->image }}" style="margin:auto; height:200px;" alt="" class="img img-responsive">
            </div>
        @else
            <div class="col-lg-12">
                <img src="{{ $stand->picture }}" style="margin:auto; height:200px;" alt="" class="img img-responsive">
            </div>
        @endif
        <h3>Stand Features</h3>
        <p>
            {{ $stand->feature_details }}<br>
            @if(!$stand->is_booked)
                <strong>More Information</strong><br>
                {{ $stand->description }}
            @endif
        </p>
        @if($stand->is_booked)
            <h3>Marketing Details/Items</h3>
            <p>
                <ul>
                    @foreach($materials as $index => $material)
                        <li><a href="{{ $material->path }}">{{ $material->titles }}</a>
                            <ul>
                                <li>
                                    {{ $material->description }}
                                </li>
                            </ul>

                        </li>
                    @endforeach
                </ul>
            </p>
            <h3>Organization Contact Details</h3>
            <p>
                {{ $stand->name }} <br>
                {{ $stand->phone }} <br>
                {{ $stand->email }} <br>
                {{ $stand->admin_name }}, {{ $stand->admin_email }}
            </p>
        @endif
    </div>
    <div class="modal-footer">
        <a href="#" data-dismiss="modal" class="btn btn-danger">Close</a>
        @if(!$stand->is_booked && !$stand->is_reserved)
            <form action="/reserve/{{ $stand->stand_id }}" class="pull-right" method="post" style="margin-left: 5px;">
                {!! csrf_field() !!}
                <button type="submit" class="btn btn-success">Reserve Stand</button>
            </form>
        @endif
    </div>
    @endforeach
@endif