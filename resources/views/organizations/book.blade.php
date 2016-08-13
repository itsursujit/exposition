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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
                </ul>
            </nav>
            <!-- /.mainmenu-container -->
        </div>
    </div>
</header>
<!-- /#header -->
<section id="upcoming-event">
    <!-- footer -->
    <footer>
        <div class="container" style="color:white;">
            <div class="row">
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

<script src="{{ URL::to('/assets/js/jquery.min.js') }}"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
<script>
    $("#myModal").on("show.bs.modal", function(e) {
        var link = $(e.relatedTarget);
        $(this).find(".modal-content").html('').load(link.attr("href"));
    });
</script>
</body>
</html>