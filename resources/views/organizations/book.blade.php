@extends('layouts.app')

@section('content')

    <section id="upcoming-event">
        <!-- footer -->
        <footer>
            <div class="container" style="color:white;">
                <div class="row">
                    <div class="tab-content-wrap">
                        <div class="col-lg-10 col-offset-lg-2">
                            <h3>About {{ $exposition->title }}</h3>
                            <p>
                                {!! $exposition->description !!}
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <h2>{{ isset($stands[0])?$stands[0]->title:'' }}</h2>
                        <h3>Stands Information</h3>
                        @foreach($stands as $key => $stand)
                            <a data-toggle="modal" href="/stand/{{ $stand->id }}" data-target="#myModal">
                                @if($stand->is_booked)
                                    <div class="col-sm-2 stand-box bg-danger">
                                        <div class="stand-content">
                                            <p>Booked</p>
                                        </div>
                                    </div>
                                @elseif($stand->is_reserved)
                                    <div class="col-sm-2 stand-box bg-warning">
                                        <div class="stand-content">
                                            <p>Reserved</p>
                                        </div>
                                    </div>
                                @else
                                    <div class="col-sm-2 stand-box bg-success">
                                        <div class="stand-content">
                                            <p>Available</p>
                                        </div>
                                    </div>
                                @endif
                            </a>
                        @endforeach
                        @if(count($stands)<=0)
                            <h5>No Stands Available at the Moment</h5>
                        @endif
                    </div>
                </div>
            </div>
        </footer>
        <!-- /footer -->

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
@section('scripts')
    <script>
        $("#myModal").on("show.bs.modal", function(e) {
            var link = $(e.relatedTarget);
            $(this).find(".modal-content").html('').load(link.attr("href"));
        });
    </script>
@endsection