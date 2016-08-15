@extends('layouts.app')

@section('content')
    <!-- #banner -->
    <section id="map-wrapper">
        <div class="banner-container">
            <div class="banner">
                <ul>
                    <li>
                        <div id="map"></div>
                    </li>

                </ul>
            </div>
        </div>
    </section> <!-- /#banner -->

    <!-- #information-bar -->
    <section id="information-bar">
        <div class="container" style="background-color: transparent;">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">

                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                        <ul>
                            <li>
                                <input placeholder="Seach Exposition by Location" id="search-bar" type="text" style="width: 75%;border: 1px solid #ccc;height: 50px;padding: 0 20px;border-radius: 5px;line-height: 50px;outline: none;transition: all .3s ease;">
                                <button class="btn-lg btn-default reload-map"><i class="fa fa-refresh" ></i> Reload Map</button>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /#information-bar -->

    <!-- #upcoming-event -->
    <section id="upcoming-event">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 col-md-7 col-sm-7">
                    <div class="section-title">
                        <h1>Upcoming Expositions</h1>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="tab-title-wrap" id="expo">
                        <ul class="clearfix">
                            <li class="filter active" data-filter="all"><span>All Event</span></li>
                            @foreach($dateRange as $key => $range)
                                <li class="filter" data-filter="{{ $range }}"><span>{{ str_replace('-', ' ', str_replace('.', '', $range)) }}</span></li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="tab-content-wrap row">
                        @foreach($expositions as $key => $exposition)
                            <div class="col-lg-3 col-md-4 expo-wrapper col-sm-6 mix {{ str_replace('.', '', $exposition->date_class) }} expo-{{ $exposition->expo_id }} hvr-float-shadow wow fadeIn">
                                <div class="img-holder"><img src="{{ URL::to('/assets/img/upcoming-event/1.jpg') }}" alt=""></div>
                                <div class="content-wrap">
                                    <img src="{{ URL::to('/assets/img/upcoming-event/author.png') }}" alt="" class="author-img">
                                    <div class="meta">
                                        <ul>
                                            <li><span><i class="fa fa-clock-o"></i>{{ $exposition->start_date }}</span></li>
                                            <li><span><i class="fa fa-map-marker"></i>{{ $exposition->city . ',' . $exposition->state, ', ' . $exposition->country }}</span></li>
                                        </ul>
                                    </div>
                                    <h3>{{ substr($exposition->title,0,20).'...' }}</h3>
                                    <a class="read-more" href="/visit/expo/{{  $exposition->expo_id }}">visit<i class="fa fa-angle-right"></i></a>
                                    <a class="read-more btn-book" style="display: none;" href="/book/expo/{{  $exposition->expo_id }}">Book Your Place<i class="fa fa-angle-right"></i></a>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /#upcoming-event -->

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
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD2vPOHSf4arJ-xjHy2I40qJCeytO3bCA0&libraries=places"></script>
    <script src="{{ URL::to('/assets/js/backbone.js') }}"></script>

    <script>
        function getParameterByName(name) {
            name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
            var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
                    results = regex.exec(location.search);
            return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
        }
        var loadedExpo = [];
        var attrs = {firstLoad: 0, loadedExpo: loadedExpo};
        var map = new Map(attrs);
        $('.filter').find("[data-filter='.16-Jun-23']").trigger('click');
        $('.reload-map').on('click', function(){
            map.show_expo();
        });
        $(document).on('click', '.filter-link', function(){
            document.location.href ="#href";
            var expo = $(this).data('filter');
            $('#expo-hidden').attr('data-filter', expo);
            $('#expo-hidden').trigger('click');
        });
        $(document).on('mouseover', '.expo-wrapper', function(){
            $(this).find('.btn-book').show();
        });
        $(document).on('mouseleave', '.expo-wrapper', function(){
            $(this).find('.btn-book').hide();
        });
    </script>
@endsection
