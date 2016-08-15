@extends('layouts.app')
@section('styles')
    <style>
        /*
 * See it in action here: http://jsfiddle.net/seydoggy/6s92p51a/
 */
        .panel-body{
            height:300px;
            overflow: auto;
            padding:2px;
        }
        .panel-table {
            display:table;
        }
        .panel-table > .panel-heading {
            display: table-header-group;
            background: transparent;
        }
        .panel-table > .panel-body {
            display: table-row-group;
        }
        .panel-table > .panel-body:before,
        .panel-table > .panel-body:after {
            content:none;
        }
        .panel-table > .panel-footer {
            display: table-footer-group;
            background: transparent;
        }
        .panel-table > div > .tr {
            display: table-row;
        }
        .panel-table > div:last-child > .tr:last-child > .td {
            border-bottom: none;
        }
        .panel-table .td {
            display: table-cell;
            padding: 15px;
            border: 1px solid #ddd;
            border-top: none;
            border-left: none;
        }
        .panel-table .td:last-child {
            border-right: none;
        }
        .panel-table > .panel-heading > .tr > .td,
        .panel-table > .panel-footer > .tr > .td {
            background-color: #f5f5f5;
        }
        .panel-table > .panel-heading > .tr > .td:first-child {
            border-radius: 4px 0 0 0;
        }
        .panel-table > .panel-heading > .tr > .td:last-child {
            border-radius: 0 4px 0 0;
        }
        .panel-table > .panel-footer > .tr > .td:first-child {
            border-radius: 0 0 0 4px;
        }
        .panel-table > .panel-footer > .tr > .td:last-child {
            border-radius: 0 0 4px 0;
        }
        .top-margin{margin-top:200px;}
        .panel-body .table {
            font-size: 0.8em;
        }
    </style>
@endsection
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3>Orders</h3>
                            </div>
                            <div class="panel-body">
                                <table class="table table-condensed table-bordered">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Organization</th>
                                            <th>Expo</th>
                                            <th>Stand</th>
                                            <th>Status</th>
                                            <th><i class="fa fa-cog"></i></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($orders as $key => $order)
                                            <tr>
                                                <td>{{ $key + 1 }}</td>
                                                <td>{{ $order->name }}</td>
                                                <td>{{ $order->expo }}</td>
                                                <td>{{ $order->stand }}</td>
                                                <td>{{ $order->status }}</td>
                                                @if($isAdmin)
                                                    @if($order->status != 'CANCELLED')
                                                    <td style="width: 40px;"><a href="/order/reject/{{ $order->id }}" title="Reject"><i class="fa fa-remove"></i></a> <a href="/order/approve/{{ $order->id }}" title="Approve"><i class="fa fa-check"></i></a></td>
                                                    @else
                                                        <td></td>
                                                    @endif
                                                @elseif($order->can_cancel)
                                                <td style="width: 40px;"><a href="/order/cancel/{{ $order->id }}" title="Cancel"><i class="fa fa-remove"></i></a></td>
                                                @else
                                                    <td></td>
                                                @endif
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3>Stands</h3>
                            </div>
                            <div class="panel-body">
                                <table class="table table-condensed table-bordered">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Stand</th>
                                        <th>Organization</th>
                                        <th>Visitors Count</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($stands as $key => $stand)
                                        <tr>
                                            <td>{{ $key + 1 }}</td>
                                            <td>{{ $stand->stand }}</td>
                                            <td>{{ $stand->name }}</td>
                                            <td>{{ $stand->visitors_count }}</td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    @if($isAdmin)
                    <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3>Expositions</h3>
                            </div>
                            <div class="panel-body">
                                <table class="table table-condensed table-bordered">
                                    <thead>
                                    <tr>
                                        <th rowspan="2">#</th>
                                        <th rowspan="2">Expo</th>
                                        <th colspan="3" style="text-align: center;">Stands</th>
                                    </tr>
                                    <tr>
                                        <th>Total</th>
                                        <th>Reserved</th>
                                        <th>Booked</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($expositions as $key => $exposition)
                                        <tr>
                                            <td>{{ $key + 1 }}</td>
                                            <td>{{ $exposition->title }}</td>
                                            <td>{{ $exposition->total }}</td>
                                            <td>{{ $exposition->reserved }}</td>
                                            <td>{{ $exposition->booked }}</td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    @endif
                </div><!--/row-->
            </div><!--/col-12-->
        </div><!--/row-->
    </div>


@endsection
@section('scripts')

@endsection
