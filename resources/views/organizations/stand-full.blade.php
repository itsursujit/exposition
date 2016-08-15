@extends('layouts.app')

@section('content')

    <section id="upcoming-event">
        <div class="container">
            <div class="row">
                @foreach($stands as $key => $stand)
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h3>{{ $stand->title }} - <small>{{ $stand->name!=''?$stand->name:'' }}</small></h3>
                    </div>
                    <div class="modal-body bg-default">
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
                                {{ $stand->organization_email }} <br>
                                {{ $stand->admin_name }}, {{ $stand->admin_email }}
                            </p>
                        @endif
                    </div>
                    <div class="modal-footer">
                        <a href="#" onclick="history.go(-1)" class="btn btn-danger">Back</a>
                    </div>
                @endforeach
            </div>
        </div>


    </section>

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="z-index: 999999">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
            </div><!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- #bottom-bar -->
    <section id="bottom-bar">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <p>&copy; 2015 <a href="index.html">EVENT TIME</a> ALL RIGHTS RESERVED</p>
                </div>
            </div>
        </div>
    </section>
    <!-- /#bottom-bar -->


    <div id="right-panel">
        <input type="hidden" class="filter" data-filter="" id="expo-hidden">
    </div>

@endsection