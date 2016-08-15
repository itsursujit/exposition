@extends('layouts.app')

@section('content')

    <section id="upcoming-event">
        <div class="container">
            <div class="row">
                <div class="tab-content-wrap row">
                    @foreach($stands as $key => $stand)
                        <div class="col-lg-6">
                            <div class="img-holder">
                                <img src="{{ URL::to("$stand->image") }}" style="height:150px;" alt="">
                            </div>
                            <div class="title">
                                {{ $stand->title }}
                            </div>
                            <div class="feature">
                                {{ $stand->feature_details }}
                            </div>
                            <a href="/visit/stand/{{ $stand->id }}">Continue Visiting</a>
                        </div>
                    @endforeach
                </div>
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
@section('scripts')
    <script>
        $("#myModal").on("show.bs.modal", function(e) {
            var link = $(e.relatedTarget);
            $(this).find(".modal-content").html('').load(link.attr("href"));
        });
    </script>
@endsection