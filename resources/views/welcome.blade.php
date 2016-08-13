<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Event Time || Responsive Bootstrap HTML Template </title>

    <!-- Responsive Meta Tag -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
    <!-- main stylesheet -->
    <link rel="stylesheet" href="{{ URL::to('/assets/css/style.css') }}">
    <!-- responsive stylesheet -->
    <link rel="stylesheet" href="{{ URL::to('/assets/css/responsive.css') }}">
</head>
<body>

<!-- #header -->
<header id="header">
    <div class="container">
        <div class="row">
            <!-- .logo -->
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 logo">
                <a href="index.html"><img src="{{ URL::to('/assets/img/resources/logo.png') }}" alt="Logo Image"></a>
            </div>
            <!-- /.logo -->

            <!-- .mainmenu-container -->
            <nav class="col-lg-9 col-md-9 col-sm-6 col-xs-6 mainmenu-container">
                <button class="nav-toggler">Navigation <i class="fa fa-bars"></i></button>
                <ul class="mainmenu clearfix">
                    <li class="nav-closer"><i class="fa fa-close"></i></li>
                    <li class="current scrollToLink dropdown">
                        <a href="#banner">HOME</a>
                        <ul class="submenu">
                            <li class="deadlink dropdown">
                                <a href="#">HOME Variations</a>
                                <ul class="submenu">
                                    <li><a href="index.html">HOME V1</a></li>
                                    <li><a href="index-v2.html">HOME V2</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="deadlink">
                        <a href="#">Pages</a>
                        <ul class="submenu">
                            <li><a href="about-us.html">About Us</a></li>
                            <li class="dropdown">
                                <a href="services.html">Services</a>
                                <ul class="submenu">
                                    <li class="deadlink"><a href="#">Third Level Menu</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="scrollToLink"><a href="#upcoming-event">EVENT</a></li>
                    <li class="scrollToLink"><a href="#event-speakers">SPEAKER</a></li>
                    <li class="scrollToLink"><a href="#pricing-table">Pricing</a></li>
                    <li class="scrollToLink"><a href="#gallery">GALLERY</a></li>
                    <li class="scrollToLink dropdown">
                        <a href="#blog">BLOG</a>
                        <ul class="submenu">
                            <li><a href="blog.html">Blog Archive</a></li>
                            <li><a href="blog-single.html">Blog Single</a></li>
                        </ul>
                    </li>
                    <li class="scrollToLink"><a href="#contact">CONTACT</a></li>
                    <li class="scrollToLink"><a href="#event-sponsor">SPONSOR</a></li>
                </ul>
            </nav>
            <!-- /.mainmenu-container -->
        </div>
    </div>
</header>
<!-- /#header -->

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
                            <a class="read-more" href="#">read more<i class="fa fa-angle-right"></i></a>
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

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD2vPOHSf4arJ-xjHy2I40qJCeytO3bCA0&libraries=places">
</script>
    <script src="{{ URL::to('/assets/js/jquery.min.js') }}"></script>
	<script src="{{ URL::to('/assets/js/jquery.themepunch.tools.min.js') }}"></script>
	<script src="{{ URL::to('/assets/js/jquery.themepunch.revolution.min.js') }}"></script>
	<script src="{{ URL::to('/assets/js/countdown.min.js') }}"></script>
	<script src="{{ URL::to('/assets/js/jquery.easing.min.js') }}"></script>
	<script src="{{ URL::to('/assets/js/jquery.fancybox.pack.js') }}"></script>
	<script src="{{ URL::to('/assets/js/jquery.mixitup.min.js') }}"></script>
	<script src="{{ URL::to('/assets/js/jquery.bxslider.min.js') }}"></script>
	<script src="{{ URL::to('/assets/js/owl.carousel.min.js') }}"></script>
	<script src="{{ URL::to('/assets/js/jquery.appear.js') }}"></script>
	<script src="{{ URL::to('/assets/js/jquery.countTo.js') }}"></script>
	<script src="{{ URL::to('/assets/js/circle-progress.js') }}"></script>
	<script src="{{ URL::to('/assets/js/wow.js') }}"></script>
	<script src="{{ URL::to('/assets/js/validate.js') }}"></script>
	<script src="{{ URL::to('/assets/js/custom.js') }}"></script>
    <script src="{{ URL::to('/assets/plugins/backbone/json2.js') }}"></script>
    <script src="{{ URL::to('/assets/plugins/backbone/underscore.js') }}"></script>
    <script src="{{ URL::to('/assets/plugins/backbone/backbone-min.js') }}"></script>
    <script src="{{ URL::to('/assets/plugins/backbone/backbone.localStorage.js') }}"></script>
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
</body>
</html>