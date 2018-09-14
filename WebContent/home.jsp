<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <title>Automation of Travel Agency</title>

  <!-- Bootstrap -->
  
  
  
  
  <style type="text/css">
    <%@include file="css/bootstrap.min.css" %>
    <%@include file="css/font-awesome.min.css" %>
    <%@include file="css/animate.css" %>
    <%@include file="css/animate.min.css" %>
    <%-- <%@include file="css/style.css" %> --%>
    
</style>  

</head>
<body>
  <header id="header">
    <nav class="navbar navbar-default navbar-static-top" role="banner">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
          <div class="navbar-brand">
            <a href="index.html"><h1>Day</h1></a>
          </div>
        </div>
        <div style='float:right' class="navbar-collapse collapse">
          <div class="menu">
            <ul class="nav nav-tabs" role="tablist">
              <li role="presentation"><a href="index.html" class="active">Home</a></li>
              <li role="presentation"><a href="about.html">About Us</a></li>
              <li role="presentation"><a href="contact">Contact</a></li>                          
              <li role="presentation"><a href="addprofile">Register</a></li>
              <li role="presentation"><a href="Login">Log In</a></li>
            </ul>
          </div>
        </div>
      </div>
      <!--/.container-->
    </nav>
    <!--/nav-->
  </header>
  <!--/header-->

  <div class="slider">
    <div id="about-slider">
      <div id="carousel-slider" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators visible-xs">
          <li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-slider" data-slide-to="1"></li>
          <li data-target="#carousel-slider" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="item active">
            <img src="img/slide.jpg" class="img-responsive" alt="">
            <div class="carousel-caption">
              <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">
                <h2><span>Speed Travel Agency</span></h2>
              </div>
              <div class="col-md-10 col-md-offset-1">
                <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">
                  <p>Enjoy Your Ride with us</p>
                </div>
              </div>
              <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.9s">
                <form class="form-inline">
                  <div class="form-group">
                    <button type="livedemo" name="Live Demo" class="btn btn-primary btn-lg" required="required">Live Demo</button>
                  </div>
                  <div class="form-group">
                    <button type="getnow" name="Get Now" class="btn btn-primary btn-lg" required="required">Get Now</button>
                  </div>
                </form>
              </div>
            </div>
          </div>

          <div class="item">
            <img src="img/slide.jpg" class="img-responsive" alt=""></div>

  
</body>

</html>
