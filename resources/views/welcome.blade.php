<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Event Time || Responsive Bootstrap HTML Template </title>

    <!-- Responsive Meta Tag -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- main stylesheet -->
    <link rel="stylesheet" href="{{ URL::to('/assets/css/style.css') }}">
    <!-- responsive stylesheet -->
    <link rel="stylesheet" href="{{ URL::to('/assets/css/responsive.css') }}">
    <style>
        #map-wrapper:hover ~ #information-bar {
            display:block;
        }
        #information-bar {
            display:none;
        }
    </style>
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
                        <li><input placeholder="Seach Exposition by Name or Location" type="text" style="width: 100%;border: 1px solid #ccc;height: 50px;padding: 0 20px;border-radius: 5px;line-height: 50px;outline: none;transition: all .3s ease;"></li>
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
                    <h1>Upcoming Events</h1>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has <br> been the industry's standard dummy text ever since the 1500</p>
                </div>
            </div>
            <div class="col-lg-5 col-md-5 col-sm-5">
                <form action="#" class="pull-right">
                    <input type="text" placeholder="Search Event"> <button type="submit"><i class="fa fa-search"></i></button>
                </form>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="tab-title-wrap">
                    <ul class="clearfix">
                        <li class="filter active" data-filter="all"><span>All Event</span></li>
                        <li class="filter" data-filter=".april-14"><span>April 14</span></li>
                        <li class="filter" data-filter=".april-22"><span>April 22</span></li>
                        <li class="filter" data-filter=".april-28"><span>April 28</span></li>
                        <li class="filter" data-filter=".may-10"><span>May 10</span></li>
                        <li class="filter" data-filter=".may-15"><span>May 15</span></li>
                        <li class="filter" data-filter=".may-22"><span>May 22</span></li>
                        <li class="filter" data-filter=".may-23"><span>May 23</span></li>
                        <li class="filter" data-filter=".jun-01"><span>June 01</span></li>
                    </ul>
                </div>
                <div class="tab-content-wrap row">
                    <div class="col-lg-3 col-md-4 col-sm-6 mix april-14 april-22 hvr-float-shadow wow fadeIn">
                        <div class="img-holder"><img src="{{ URL::to('/assets/img/upcoming-event/1.jpg') }}" alt=""></div>
                        <div class="content-wrap">
                            <img src="{{ URL::to('/assets/img/upcoming-event/author.png') }}" alt="" class="author-img">
                            <div class="meta">
                                <ul>
                                    <li><span><i class="fa fa-clock-o"></i>22 April, 2015</span></li>
                                    <li><span><i class="fa fa-map-marker"></i>California</span></li>
                                </ul>
                            </div>
                            <h3>Event Name</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing [...]</p>
                            <a class="read-more" href="#">read more<i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix april-28 april-14 hvr-float-shadow wow fadeIn" data-wow-delay=".3s">
                        <div class="img-holder"><img src="{{ URL::to('/assets/img/upcoming-event/2.jpg') }}" alt=""></div>
                        <div class="content-wrap">
                            <img src="{{ URL::to('/assets/img/upcoming-event/author.png') }}" alt="" class="author-img">
                            <div class="meta">
                                <ul>
                                    <li><span><i class="fa fa-clock-o"></i>28 April, 2015</span></li>
                                    <li><span><i class="fa fa-map-marker"></i>California</span></li>
                                </ul>
                            </div>
                            <h3>Event Name</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing [...]</p>
                            <a class="read-more" href="#">read more<i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix may-10 may-22 hvr-float-shadow wow fadeIn" data-wow-delay=".6s">
                        <div class="img-holder"><img src="{{ URL::to('/assets/img/upcoming-event/3.jpg') }}" alt=""></div>
                        <div class="content-wrap">
                            <img src="{{ URL::to('/assets/img/upcoming-event/author.png') }}" alt="" class="author-img">
                            <div class="meta">
                                <ul>
                                    <li><span><i class="fa fa-clock-o"></i>10 May, 2015</span></li>
                                    <li><span><i class="fa fa-map-marker"></i>California</span></li>
                                </ul>
                            </div>
                            <h3>Event Name</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing [...]</p>
                            <a class="read-more" href="#">read more<i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix may-15 may-23 hvr-float-shadow wow fadeIn" data-wow-delay=".9s">
                        <div class="img-holder"><img src="{{ URL::to('/assets/img/upcoming-event/1.jpg') }}" alt=""></div>
                        <div class="content-wrap">
                            <img src="{{ URL::to('/assets/img/upcoming-event/author.png') }}" alt="" class="author-img">
                            <div class="meta">
                                <ul>
                                    <li><span><i class="fa fa-clock-o"></i>15 May, 2015</span></li>
                                    <li><span><i class="fa fa-map-marker"></i>California</span></li>
                                </ul>
                            </div>
                            <h3>Event Name</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing [...]</p>
                            <a class="read-more" href="#">read more<i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix may-22 hvr-float-shadow">
                        <div class="img-holder"><img src="{{ URL::to('/assets/img/upcoming-event/1.jpg') }}" alt=""></div>
                        <div class="content-wrap">
                            <img src="{{ URL::to('/assets/img/upcoming-event/author.png') }}" alt="" class="author-img">
                            <div class="meta">
                                <ul>
                                    <li><span><i class="fa fa-clock-o"></i>15 May, 2015</span></li>
                                    <li><span><i class="fa fa-map-marker"></i>California</span></li>
                                </ul>
                            </div>
                            <h3>Event Name</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing [...]</p>
                            <a class="read-more" href="#">read more<i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix may-23 hvr-float-shadow ">
                        <div class="img-holder"><img src="{{ URL::to('/assets/img/upcoming-event/1.jpg') }}" alt=""></div>
                        <div class="content-wrap">
                            <img src="{{ URL::to('/assets/img/upcoming-event/author.png') }}" alt="" class="author-img">
                            <div class="meta">
                                <ul>
                                    <li><span><i class="fa fa-clock-o"></i>15 May, 2015</span></li>
                                    <li><span><i class="fa fa-map-marker"></i>California</span></li>
                                </ul>
                            </div>
                            <h3>Event Name</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing [...]</p>
                            <a class="read-more" href="#">read more<i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix jun-01 hvr-float-shadow">
                        <div class="img-holder"><img src="{{ URL::to('/assets/img/upcoming-event/1.jpg') }}" alt=""></div>
                        <div class="content-wrap">
                            <img src="{{ URL::to('/assets/img/upcoming-event/author.png') }}" alt="" class="author-img">
                            <div class="meta">
                                <ul>
                                    <li><span><i class="fa fa-clock-o"></i>01 June, 2015</span></li>
                                    <li><span><i class="fa fa-map-marker"></i>California</span></li>
                                </ul>
                            </div>
                            <h3>Event Name</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing [...]</p>
                            <a class="read-more" href="#">read more<i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 mix april-22 hvr-float-shadow ">
                        <div class="img-holder"><img src="{{ URL::to('/assets/img/upcoming-event/1.jpg') }}" alt=""></div>
                        <div class="content-wrap">
                            <img src="{{ URL::to('/assets/img/upcoming-event/author.png') }}" alt="" class="author-img">
                            <div class="meta">
                                <ul>
                                    <li><span><i class="fa fa-clock-o"></i>15 June, 2015</span></li>
                                    <li><span><i class="fa fa-map-marker"></i>California</span></li>
                                </ul>
                            </div>
                            <h3>Event Name</h3>
                            <p>Lorem Ipsum is simply dummy text of the printing [...]</p>
                            <a class="read-more" href="#">read more<i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /#upcoming-event -->

<!-- #register-now -->
<section id="register-now" class="gradient-overlay">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h1>REGISTER NOW AND JOIN WITH US!!</h1>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <ul class="clearfix">
                    <li>
                        <div class="input-wrap">
                            <label><img src="{{ URL::to('/assets/img/icons/name.png') }}" alt="">Name</label>
                            <input type="text" placeholder="Full Name">
                        </div>
                    </li>
                    <li>
                        <div class="input-wrap">
                            <label><img src="{{ URL::to('/assets/img/icons/email.png') }}" alt="">EMAIL</label>
                            <input type="text" placeholder="Enter your email">
                        </div>
                    </li>
                    <li>
                        <div class="input-wrap">
                            <label><img src="{{ URL::to('/assets/img/icons/phone.png') }}" alt="">PHONE</label>
                            <input type="text" placeholder="Enter Phone Number">
                        </div>
                    </li>
                    <li>
                        <div class="input-wrap">
                            <label><img src="{{ URL::to('/assets/img/icons/password.png') }}" alt="">PASSWORD</label>
                            <input type="text" placeholder="PASSWORD">
                        </div>
                    </li>
                    <li>
                        <div class="input-wrap">
                            <button type="submit" class="hvr-bounce-to-right">RESGISTER</button>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>
<!-- /#register-now -->


<!-- #event-speakers -->
<section id="event-speakers">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h1>EVENT SPEAKERS</h1>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has <br> been the industry's standard dummy text ever since the 1500</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-8 col-sm-8 col-lg-offset-0 col-md-offset-1 col-sm-offset-1">
                <!-- .single-speakers -->
                <div class="single-speakers row">
                    <div class="info text-right col-lg-6 col-md-7 col-sm-7">
                        <h3>Masum Rana</h3>
                        <span class="position">UI/UX Designer</span>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                        <ul class="social">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                    <div class="img-holder text-center col-lg-6 col-md-5 col-sm-5">
                        <div class="img-container"><img src="{{ URL::to('/assets/img/speakers/1.png') }}" alt=""></div>
                    </div>
                </div>
                <!-- /.single-speakers -->

                <!-- .single-speakers -->
                <div class="single-speakers row">
                    <div class="info text-right col-lg-6 col-md-7 col-sm-7">
                        <h3>Muhibbur Rashid</h3>
                        <span class="position">UI/UX Designer</span>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                        <ul class="social">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                    <div class="img-holder text-center col-lg-6 col-md-5 col-sm-5">
                        <div class="img-container"><img src="{{ URL::to('/assets/img/speakers/2.png') }}" alt=""></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-8 col-sm-10 col-lg-offset-0 col-md-offset-1 col-sm-offset-1">
                <!-- .single-speakers -->
                <div class="single-speakers row">
                    <div class="img-holder text-center col-lg-6 col-md-5 col-sm-5">
                        <div class="img-container" data-wow-delay=".6s"><img src="{{ URL::to('/assets/img/speakers/3.png') }}" alt=""></div>
                    </div>
                    <div class="info text-left col-lg-6 col-md-7 col-sm-7">
                        <h3>Rafifa Nodi</h3>
                        <span class="position">UI/UX Designer</span>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                        <ul class="social">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
                <!-- /.single-speakers -->

                <!-- .single-speakers -->
                <div class="single-speakers row">
                    <div class="img-holder text-center col-lg-6 col-md-5 col-sm-5">
                        <div class="img-container"><img src="{{ URL::to('/assets/img/speakers/4.png') }}" alt=""></div>
                    </div>
                    <div class="info text-left col-lg-6 col-md-7 col-sm-7">
                        <h3>Rashed Kabir</h3>
                        <span class="position">UI/UX Designer</span>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                        <ul class="social">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
                <!-- /.single-speakers -->
            </div>
        </div>
        <div class="row text-center">
            <a href="#" class="show-more hvr-bounce-to-right">SEE MORE</a>
        </div>
    </div>
</section>
<!-- /#event-speakers -->

<!-- #app-section -->
<section id="app-section" class="gradient-overlay">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-md-5 col-sm-5">
                <div class="app-box wow slideInLeft" style="background-image: url({{ URL::to('/assets/img/app-section/app-main.png') }}), url({{ URL::to('/assets/img/app-section/app-bg.png') }});"></div>
            </div>
            <div class="col-lg-7 col-md-7 col-sm-7">
                <div class="section-title">
                    <h1>We  have Mobile App for you!! Download it <br>now and stay with us</h1>
                </div>

                <ul>
                    <li class="clearfix">
                        <i class="fa fa-file-text-o"></i> <span><b>User Friendly</b> :  The standard chunk of Lorem Ipsum used since the 1500s is <br>reproduced below for those interested</span>
                    </li>
                    <li class="clearfix">
                        <i class="fa fa-file-text-o"></i> <span><b>User Friendly</b> :  The standard chunk of Lorem Ipsum used since the 1500s is <br>reproduced below for those interested</span>
                    </li>
                    <li class="clearfix">
                        <i class="fa fa-file-text-o"></i> <span><b>User Friendly</b> :  The standard chunk of Lorem Ipsum used since the 1500s is <br>reproduced below for those interested</span>
                    </li>
                </ul>

                <a href="#" class="dwnld-now hvr-bounce-to-right">DOWNLOAD NOW</a>

            </div>
        </div>
    </div>
</section>
<!-- /#app-section -->

<!-- #pricing-table -->
<section id="pricing-table">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h1>PRICING TABLE</h1>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has <br> been the industry's standard dummy text ever since the 1500</p>
                </div>
            </div>
        </div>
        <div class="row price-table-row">
            <div class="col-lg-3 col-md-4 col-sm-6 wow zoomIn">
                <!-- .single-price-box -->
                <div class="single-price-box">
                    <div class="title">
                        <span>free</span>
                    </div>
                    <div class="content">
                        <span class="time">1-months</span>
                        <span class="price"><span class="currency">$</span>0</span>
                        <a href="#" class="sign-up hvr-bounce-to-right">sign up</a>
                    </div>
                </div>
                <!-- /.single-price-box -->
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 wow zoomIn" data-wow-delay=".5s">
                <!-- .single-price-box -->
                <div class="single-price-box">
                    <div class="title">
                        <span>basic</span>
                    </div>
                    <div class="content">
                        <span class="time">6-months</span>
                        <span class="price"><span class="currency">$</span>16</span>
                        <a href="#" class="sign-up hvr-bounce-to-right">sign up</a>
                    </div>
                </div>
                <!-- /.single-price-box -->
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 wow zoomIn" data-wow-delay="1s">
                <!-- .single-price-box -->
                <div class="single-price-box">
                    <div class="title">
                        <span>STANDARD</span>
                    </div>
                    <div class="content">
                        <span class="time">8-months</span>
                        <span class="price"><span class="currency">$</span>39</span>
                        <a href="#" class="sign-up hvr-bounce-to-right">sign up</a>
                    </div>
                    <div class="bagage">
                        best
                    </div>
                </div>
                <!-- /.single-price-box -->
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-lg-offset-0 col-md-offset-4 wow zoomIn" data-wow-delay="1.5s">
                <!-- .single-price-box -->
                <div class="single-price-box">
                    <div class="title">
                        <span>business</span>
                    </div>
                    <div class="content">
                        <span class="time">12-months</span>
                        <span class="price"><span class="currency">$</span>65</span>
                        <a href="#" class="sign-up hvr-bounce-to-right">sign up</a>
                    </div>
                </div>
                <!-- /.single-price-box -->
            </div>
        </div>
    </div>
</section>
<!-- /#pricing-table -->

<!-- #testimonials -->
<section id="testimonials" class="gradient-overlay">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h1>satisfied client</h1>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="testimonial custom-pager text-center">
                    <ul>
                        <li class="prev"><img src="{{ URL::to('/assets/img/testimonials/arrow-left.png') }}" alt=""></li>
                        <li class="next"><img src="{{ URL::to('/assets/img/testimonials/arrow-right.png') }}" alt=""></li>
                        <li class="active" data-slide-index="0"><span><img src="{{ URL::to('/assets/img/testimonials/1.png') }}" alt=""></span></li>
                        <li data-slide-index="1"><span><img src="{{ URL::to('/assets/img/testimonials/2.png') }}" alt=""></span></li>
                        <li data-slide-index="2"><span><img src="{{ URL::to('/assets/img/testimonials/3.png') }}" alt=""></span></li>
                        <li data-slide-index="3"><span><img src="{{ URL::to('/assets/img/testimonials/4.png') }}" alt=""></span></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12 text-center">
                <ul class="testimonial-slide">
                    <li class="slide">
                        <h3>Rafifa Nodi</h3>
                        <span>Designer, EventTime CO.</span>

                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been <br> the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of <br> type and scrambled it to make a type specimen book</p>

                    </li>
                    <li class="slide">
                        <h3>Masum Rana</h3>
                        <span>Designer, EventTime CO.</span>

                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been <br> the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of <br> type and scrambled it to make a type specimen book</p>

                    </li>
                    <li class="slide">
                        <h3>Rashed Kabir</h3>
                        <span>Designer, EventTime CO.</span>

                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been <br> the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of <br> type and scrambled it to make a type specimen book</p>

                    </li>
                    <li class="slide">
                        <h3>Muhibbur Rashid</h3>
                        <span>CEO, EventTime CO.</span>

                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been <br> the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of <br> type and scrambled it to make a type specimen book</p>

                    </li>
                </ul>
            </div>
        </div>

    </div>
</section>
<!-- /#testimonials -->

<!-- #gallery -->
<section id="gallery">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h1>Our Gallery</h1>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has <br> been the industry's standard dummy text ever since the 1500</p>
                </div>
            </div>
        </div>
        <div class="row gallery-image">
            <a class="fancybox" href="{{ URL::to('/assets/img/gallery/1.png') }}"><div class="col-lg-3 col-md-4 col-sm-6">
                    <img src="{{ URL::to('/assets/img/gallery/1.png') }}" alt="">
                </div></a>
            <a class="fancybox" href="{{ URL::to('/assets/img/gallery/2.png') }}"><div class="col-lg-3 col-md-4 col-sm-6">
                    <img src="{{ URL::to('/assets/img/gallery/2.png') }}" alt="">
                </div></a>
            <a class="fancybox" href="{{ URL::to('/assets/img/gallery/3.png') }}"><div class="col-lg-3 col-md-4 col-sm-6">
                    <img src="{{ URL::to('/assets/img/gallery/3.png') }}" alt="">
                </div></a>
            <a class="fancybox" href="{{ URL::to('/assets/img/gallery/4.png') }}"><div class="col-lg-3 col-md-4 col-sm-6">
                    <img src="{{ URL::to('/assets/img/gallery/4.png') }}" alt="">
                </div></a>
            <a class="fancybox" href="{{ URL::to('/assets/img/gallery/5.png') }}"><div class="col-lg-3 col-md-4 col-sm-6">
                    <img src="{{ URL::to('/assets/img/gallery/5.png') }}" alt="">
                </div></a>
            <a class="fancybox" href="{{ URL::to('/assets/img/gallery/6.png') }}"><div class="col-lg-3 col-md-4 col-sm-6">
                    <img src="{{ URL::to('/assets/img/gallery/6.png') }}" alt="">
                </div></a>
            <a class="fancybox" href="{{ URL::to('/assets/img/gallery/7.png') }}"><div class="col-lg-3 col-md-4 col-sm-6">
                    <img src="{{ URL::to('/assets/img/gallery/7.png') }}" alt="">
                </div></a>
            <a class="fancybox" href="{{ URL::to('/assets/img/gallery/8.png') }}"><div class="col-lg-3 col-md-4 col-sm-6">
                    <img src="{{ URL::to('/assets/img/gallery/8.png') }}" alt="">
                </div></a>
        </div>
    </div>
</section>
<!-- /#gallery -->

<!-- #blog -->
<section id="blog">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h1>LATEST NEWS</h1>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has <br> been the industry's standard dummy text ever since the 1500</p>
                </div>
            </div>
        </div>
        <div class="row blog-post-container">
            <div class="col-lg-8 col-md-8 col-sm-12">
                <div class="row">
                    <div class="single-post thumbnail col-lg-12 col-md-12 col-sm-12 wow fadeIn">
                        <div class="img-holder pull-left">
                            <img src="{{ URL::to('/assets/img/blog/1.jpg') }}" alt="">
                        </div>
                        <div class="content pull-left">
                            <h3>Post with Image Here</h3>
                            <p class="meta"><a href="#">Rashed kabir</a> on 24  Feb, 2014</p>
                            <p>Lorem Ipsum is simply dummy text of the <br> printing and typesetting industry.</p>
                            <a href="#" class="read-more hvr-bounce-to-right">read more</a>
                        </div>
                    </div>
                    <div class="single-post col-lg-6 col-md-6 col-sm-6 wow fadeIn" data-wow-delay=".3s">
                        <div class="content">
                            <h3>Text Post Only Here</h3>
                            <p class="meta"><a href="#">Rashed kabir</a> on 24  Feb, 2014</p>
                            <p>Lorem Ipsum is simply dummy text of the <br> printing and typesetting industry.</p>
                            <a href="#" class="read-more hvr-bounce-to-right">read more</a>
                        </div>
                    </div>
                    <div class="single-post col-lg-6 col-md-6 col-sm-6 link-post  wow fadeIn" data-wow-delay=".3s">
                        <div class="link-holder text-center">
                            <i class="fa fa-link"></i>
                            <p>http://www.facebook.com</p>
                        </div>
                        <div class="content ">
                            <a href="#" class="read-more hvr-bounce-to-right">read more</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-lg-push-0 col-md-push-0 col-sm-push-3">
                <div class="single-post wow fadeIn">
                    <div class="img-holder">
                        <img src="{{ URL::to('/assets/img/blog/2.jpg') }}" alt="">
                    </div>
                    <div class="content">
                        <h3>Post with Image Here</h3>
                        <p class="meta"><a href="#">Rashed kabir</a> on 24  Feb, 2014</p>
                        <p>Lorem Ipsum is simply dummy text of the <br> printing and typesetting industry.</p>
                        <a href="#" class="read-more hvr-bounce-to-right">read more</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /#blog -->


<!-- #contact -->
<section id="contact" class="gradient-overlay">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h1>Contact us</h1>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has <br> been the industry's standard dummy text ever since the 1500</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 form-section">
                <form class="contact-form" action="{{ URL::to('/assets/include/sendemail.php') }}">
                    <ul class="clearfix">
                        <li class="half"><input type="text" name="name" placeholder="Your Name"></li>
                        <li class="half"><input type="text" name="email" placeholder="Your Email"></li>
                        <li class="full"><input type="text" name="subject" placeholder="Your Subject"></li>
                        <li class="full"><textarea name="message" placeholder="Your Message here"></textarea></li>
                        <li class="full"><button type="submit" class="hvr-bounce-to-right">Contact Us</button></li>
                    </ul>
                </form>
            </div>
        </div>
    </div>
</section>
<!-- /#contact -->

<!-- #event-sponsor -->
<section id="event-sponsor">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h1>EVENT SPONSOR</h1>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum <br> has been the industry's standard dummy text ever since the 1500</p>
                </div>
            </div>
        </div>
        <div class="row sponsor-logo-row">
            <div class="col-lg-12">
                <ul class="sponsor-logo">
                    <li>
                        <div class="item"><img src="{{ URL::to('/assets/img/sponsor-logo/1.png') }}" alt=""></div>
                    </li>
                    <li>
                        <div class="item"><img src="{{ URL::to('/assets/img/sponsor-logo/2.png') }}" alt=""></div>
                    </li>
                    <li>
                        <div class="item"><img src="{{ URL::to('/assets/img/sponsor-logo/3.png') }}" alt=""></div>
                    </li>
                    <li>
                        <div class="item"><img src="{{ URL::to('/assets/img/sponsor-logo/4.png') }}" alt=""></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>
<!-- /#event-sponsor -->

<!-- #subscribe-newsletter -->
<section id="subscribe-newsletter">
    <div class="container">
        <div class="gradient-overlay">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-10 col-lg-offset-2 col-md-offset-2 col-sm-offset-1">
                    <div class="text-box col-lg-6 col-md-6 col-sm-6">
                        <span>Subcribe </span>Our News
                    </div>
                    <div class="input-box col-lg-6 col-md-6 col-sm-6">
                        <form action="#">
                            <input type="text" placeholder="Enter Email">
                            <button type="submit"><i class="fa fa-paper-plane"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /#subscribe-newsletter -->

<!-- footer -->
<footer>
    <div class="container">
        <div class="row">
            <!-- .footer-widget -->
            <div class="col-lg-4 col-md-4 col-sm-6 footer-widget about-widget" >
                <img src="{{ URL::to('/assets/img/resources/logo.png') }}" alt="Footer Logo">
                <p>Lorem Ipsum is simply dummy text of the <br> printing and typesetting industry. Lorem <br> <br> Ipsum has been the industry's standard <br> dummy text ever since th1500s, when an <br> unknown printer took a galley book.</p>
                <div class="social-icons">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-google-plus"></i></a>
                    <a href="#"><i class="fa fa-linkedin"></i></a>
                    <a href="#"><i class="fa fa-pinterest"></i></a>
                </div>
            </div>
            <!-- /.footer-widget -->

            <!-- .footer-widget -->
            <div class="col-lg-2 col-md-2 col-sm-6 footer-widget menu-widget">
                <h3>QUICK LINKS</h3>
                <ul>
                    <li><a href="#"><i class="fa fa-angle-right"></i> FAQ</a></li>
                    <li><a href="#"><i class="fa fa-angle-right"></i> Support</a></li>
                    <li><a href="#"><i class="fa fa-angle-right"></i> Sitemap</a></li>
                    <li><a href="#"><i class="fa fa-angle-right"></i> Blog</a></li>
                    <li><a href="#"><i class="fa fa-angle-right"></i> Community</a></li>
                    <li><a href="#"><i class="fa fa-angle-right"></i> Membership</a></li>
                    <li><a href="#"><i class="fa fa-angle-right"></i> Event</a></li>
                    <li><a href="#"><i class="fa fa-angle-right"></i> Contact Us</a></li>
                </ul>
            </div>
            <!-- /.footer-widget -->

            <!-- .footer-widget -->
            <div class="col-lg-3 col-md-3 col-sm-6 footer-widget twitter-feed " >
                <h3>Twitter Feed</h3>
                <div class="twitter"></div>
            </div>
            <!-- /.footer-widget -->

            <!-- .footer-widget -->
            <div class="col-lg-3 col-md-3 col-sm-6 footer-widget" >
                <h3>Footer Widget</h3>
                <ul class="photo-gallery">
                    <li><a class="fancybox" href="{{ URL::to('/assets/img/footer-widget/photo-gallery/main/1.jpg') }}"><img src="{{ URL::to('/assets/img/footer-widget/photo-gallery/1.jpg') }}" alt=""></a></li>
                    <li><a class="fancybox" href="{{ URL::to('/assets/img/footer-widget/photo-gallery/main/2.jpg') }}"><img src="{{ URL::to('/assets/img/footer-widget/photo-gallery/2.jpg') }}" alt=""></a></li>
                    <li><a class="fancybox" href="{{ URL::to('/assets/img/footer-widget/photo-gallery/main/3.jpg') }}"><img src="{{ URL::to('/assets/img/footer-widget/photo-gallery/3.jpg') }}" alt=""></a></li>
                    <li><a class="fancybox" href="{{ URL::to('/assets/img/footer-widget/photo-gallery/main/4.jpg') }}"><img src="{{ URL::to('/assets/img/footer-widget/photo-gallery/4.jpg') }}" alt=""></a></li>
                    <li><a class="fancybox" href="{{ URL::to('/assets/img/footer-widget/photo-gallery/main/5.jpg') }}"><img src="{{ URL::to('/assets/img/footer-widget/photo-gallery/5.jpg') }}" alt=""></a></li>
                    <li><a class="fancybox" href="{{ URL::to('/assets/img/footer-widget/photo-gallery/main/6.jpg') }}"><img src="{{ URL::to('/assets/img/footer-widget/photo-gallery/6.jpg') }}" alt=""></a></li>
                    <li><a class="fancybox" href="{{ URL::to('/assets/img/footer-widget/photo-gallery/main/3.jpg') }}"><img src="{{ URL::to('/assets/img/footer-widget/photo-gallery/3.jpg') }}" alt=""></a></li>
                    <li><a class="fancybox" href="{{ URL::to('/assets/img/footer-widget/photo-gallery/main/1.jpg') }}"><img src="{{ URL::to('/assets/img/footer-widget/photo-gallery/1.jpg') }}" alt=""></a></li>
                    <li><a class="fancybox" href="{{ URL::to('/assets/img/footer-widget/photo-gallery/main/2.jpg') }}"><img src="{{ URL::to('/assets/img/footer-widget/photo-gallery/2.jpg') }}" alt=""></a></li>
                </ul>
            </div>
            <!-- /.footer-widget -->
        </div>
    </div>
</footer>
<!-- /footer -->

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
    <p>Total Distance: <span id="total"></span></p>
</div>
<script>
    function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 4,
            center: {lat: -24.345, lng: 134.46}  // Australia.
        });

        var directionsService = new google.maps.DirectionsService;
        var directionsDisplay = new google.maps.DirectionsRenderer({
            draggable: true,
            map: map,
            panel: document.getElementById('right-panel')
        });

        directionsDisplay.addListener('directions_changed', function() {
            computeTotalDistance(directionsDisplay.getDirections());
        });

        displayRoute('Perth, WA', 'Sydney, NSW', directionsService,
                directionsDisplay);
    }

    function displayRoute(origin, destination, service, display) {
        service.route({
            origin: origin,
            destination: destination,
            waypoints: [{location: 'Adelaide, SA'}, {location: 'Broken Hill, NSW'}],
            travelMode: 'DRIVING',
            avoidTolls: true
        }, function(response, status) {
            if (status === 'OK') {
                display.setDirections(response);
            } else {
                alert('Could not display directions due to: ' + status);
            }
        });
    }

    function computeTotalDistance(result) {
        var total = 0;
        var myroute = result.routes[0];
        for (var i = 0; i < myroute.legs.length; i++) {
            total += myroute.legs[i].distance.value;
        }
        total = total / 1000;
        document.getElementById('total').innerHTML = total + ' km';
    }
</script>
<script src="https://maps.googleapis.com/maps/api/js?callback=initMap&key=AIzaSyA52TRWk7LalmXMtqCVUQTQwbFVfgcraXw">
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
    <script>
        /*$('#map-wrapper').on('mouseenter', function(){
           $('#information-bar').show();
        });
        $('#map-wrapper').on('mouseleave', function(){
            $('#information-bar').hide();
        });*/
    </script>
</body>
</html>