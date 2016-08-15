<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Event Time || Responsive Bootstrap HTML Template </title>

    <!-- Responsive Meta Tag -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- main stylesheet -->
    <link rel="stylesheet" href="{{ URL::to('/assets/css/style.css') }}">
    <!-- responsive stylesheet -->
    <link rel="stylesheet" href="{{ URL::to('/assets/css/responsive.css') }}">
    <style>
        .top-margin{margin-top:120px;}
    </style>
    @yield('styles')
</head>
<body>
@include('layouts.menu')
    <div class="top-margin">
    @yield('content')
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

    @yield('scripts')
</body>
</html>