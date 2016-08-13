<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Event Time || Responsive Bootstrap HTML Template </title>

    <!-- Responsive Meta Tag -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
    <!-- main stylesheet -->
    <!-- responsive stylesheet -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{ URL::to('/assets/css/responsive.css') }}">
    <link rel="stylesheet" href="{{ URL::to('/assets/css/form-elements.css') }}">
    <link rel="stylesheet" href="{{ URL::to('/assets/css/style.css') }}">

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
<section id="signup">
    <!-- Top content -->
    <div class="top-content">
        <div class="container">

            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text">
                    <h1>Reserve your favourite stand</h1>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 form-box">
                    @foreach($stand as $key => $cur)
                    <form role="form" action="/reserve/{{ $cur->stand_id }}" method="post" class="f1">
                        {!! csrf_field() !!}
                        <p>Fill in the form to order the stand</p>
                        <div class="f1-steps">
                            <div class="f1-progress">
                                <div class="f1-progress-line" data-now-value="16.66" data-number-of-steps="3" style="width: 16.66%;"></div>
                            </div>
                            <div class="f1-step active">
                                <div class="f1-step-icon"><i class="fa fa-user"></i></div>
                                <p>about</p>
                            </div>
                            <div class="f1-step">
                                <div class="f1-step-icon"><i class="fa fa-key"></i></div>
                                <p>account</p>
                            </div>
                            <div class="f1-step">
                                <div class="f1-step-icon"><i class="fa fa-twitter"></i></div>
                                <p>checkout</p>
                            </div>
                        </div>

                        <fieldset>
                            <h4>Organization Information:</h4>
                            <div class="form-group">
                                <label class="sr-only" for="f1-organization-name">Organization name</label>
                                <input type="text" name="organization_name" required placeholder="Organization name..." class="f1-organization-name form-control" id="f1-organization-name">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="f1-email">Email</label>
                                <input type="text" name="email" required placeholder="Email..." class="f1-email form-control" id="f1-email">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="f1-phone">Phone</label>
                                <input type="text" name="phone" placeholder="Phone..." class="f1-email form-control" id="f1-phone">
                            </div>
                            <div class="f1-buttons">
                                <button type="button" class="btn btn-next">Next</button>
                            </div>
                        </fieldset>

                        <fieldset>
                            <h4>Set up your account:</h4>
                            <div class="form-group">
                                <label class="sr-only" for="f1-admin-name">Admin Name</label>
                                <input type="text" name="admin_name" required placeholder="Admin name..." class="f1-admin-name form-control" id="f1-admin-name">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="f1-admin-email">Admin Email</label>
                                <input type="text" name="admin_email" required placeholder="Email..." class="f1-admin-email form-control" id="f1-admin-email">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="f1-password">Password</label>
                                <input type="password" name="password" required placeholder="Password..." class="f1-password form-control" id="f1-password">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="f1-repeat-password">Repeat password</label>
                                <input type="password" name="password_confirmation" required placeholder="Repeat password..."
                                       class="f1-repeat-password form-control" id="f1-repeat-password">
                            </div>
                            <div class="f1-buttons">
                                <button type="button" class="btn btn-previous">Previous</button>
                                <button type="button" class="btn btn-next">Next</button>
                            </div>
                        </fieldset>

                        <fieldset>
                            <h4>Checkout:</h4>
                            <div class="form-group">
                                <div class="col-lg-12">
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td><img style="width:200px;" class="img img-responsive" src="{{ $cur->picture }}" alt=""></td>
                                                <td style="padding: 25px;line-height: 1.25;">
                                                    <h4>{{ $cur->title }}</h4>
                                                    <p>{{ $cur->exposition_title }}</p>
                                                </td>
                                                <td>USD $1200</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="f1-buttons">
                                <button type="button" class="btn btn-previous">Previous</button>
                                <button type="submit" name="order" class="btn btn-submit" value="reserve">Reserve</button>
                                <button type="submit" name="order" class="btn btn-submit" value="book">Pay/Book</button>
                            </div>
                        </fieldset>
                    </form>
                    @endforeach
                </div>
            </div>
        </div>
    </div>

</section>

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
<script src="/assets/js/scripts.js"></script>
<script>
    $("#myModal").on("show.bs.modal", function(e) {
        var link = $(e.relatedTarget);
        $(this).find(".modal-content").html('').load(link.attr("href"));
    });
</script>
</body>
</html>