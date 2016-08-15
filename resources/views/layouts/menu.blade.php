<!-- #header -->
<header id="header">
   <div class="container">
      <div class="row">
         <!-- .logo -->
         <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 logo">
            <a href="/"><img src="{{ URL::to('/assets/img/resources/logo.png') }}" alt="Logo Image"></a>
         </div>
         <!-- /.logo -->

         <!-- .mainmenu-container -->
         <nav class="col-lg-9 col-md-9 col-sm-6 col-xs-6 mainmenu-container">
            <button class="nav-toggler">Navigation <i class="fa fa-bars"></i></button>
            <ul class="mainmenu clearfix">
               @if(\Illuminate\Support\Facades\Auth::user())
                  <li class="active"><a href="/dashboards">DASHBOARDS</a></li>
                  <li><a href="/logout">LOGOUT</a></li>
               @else
                  <li><a href="/login">LOGIN</a></li>
               @endif
            </ul>
         </nav>
         <!-- /.mainmenu-container -->
      </div>
   </div>
</header>