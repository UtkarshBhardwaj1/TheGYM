
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TheGYM</title>
        
   
    </head>
   
        <body>
            
            
    <%@include file="navbar.jsp" %>

<div class="container-fluid p-0 m-0">

   <div class="jumbotron bg-dark text-light">
      <div class="container">
     <h3 class="display-3">Welcome To TheGYM</h3>
     <h5 class="display-4">The Best GYM In Your City</h5>
     <p>Welcome to TheGYM, where fitness meets excellence. Our state-of-the-art facility offers a dynamic and inclusive environment
      for all fitness enthusiasts. With top-of-the-line equipment, expert trainers, and a range of fitness programs, we're dedicated to
       helping you achieve your goals. Join us on this empowering fitness journey today!</p>
       
      <p>Ignite your fitness journey at TheGYM. Discover expert guidance, cutting-edge equipment, and a supportive community to help you
       achieve your goals. Join us today and embrace a healthier, stronger you.</p>
   
      <a class="btn btn-outline-light btn-lg" href="register.jsp"> <span class="fa 	fa fa-user-plus"></span>  Start ! its Free</a>
                    <a href="login.jsp" class="btn btn-outline-light btn-lg"> <span class="fa fa-user-circle "></span>  Login</a>
     </div>
   </div>



<div id="hero-carousel" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="images/slider3.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/slider4.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/slider2.jpg" alt="Third slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/slider1.jpg" alt="Third slide">
    </div>
  </div>
   
   <ul class="carousel-indicators">
    <li data-target="#hero-carousel" data-silde-to="0" class="active"> </li>
    <li data-target="#hero-carousel" data-silde-to="1" class=""> </li>
    <li data-target="#hero-carousel" data-silde-to="2" class=""> </li>
    <li data-target="#hero-carousel" data-silde-to="3" class=""> </li>
    
   
   
   </ul>
  
  
  
  
   <a class="carousel-control-prev" href="#hero-carousel" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#hero-carousel" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
 
</div>

    
    <!--//cards-->

<div class="container">

  <div class="row">
  
    <div class="col-md-4">
    
    <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title">Reach New Heights</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-color-dark">Read more</a>
  </div>
</div>
    
    
    </div>
       <div class="col-md-4">
    
    <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title">Empower Your Mind and Body</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-color-dark">Read more</a>
  </div>
</div>
    
    
    </div>   <div class="col-md-4">
    
    <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title">Unlock Your Inner Athlete</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-color-dark">Read more</a>
  </div>
</div>
    
    
    </div>
  
  
  </div>



 <div class="row mb-4">
  
    <div class="col-md-4">
    
    <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title">Achieve Your Fitness Goals</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-color-dark">Read more</a>
  </div>
</div>
    
    
    </div>
       <div class="col-md-4">
    
    <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title">Discover Your Strength</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-color-dark">Read more</a>
  </div>
</div>
    
    
    </div>   <div class="col-md-4">
    
    <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title">Unleash Your Potential</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-color-dark">Read more</a>
  </div>
</div>
    
    
    </div>
  
  
  </div>

</div>

<footer class=" css-ashsjf eu4oa1w0   text-center">
<span class="css-16m72qo e1wnkr790 ">
©2023 TheGYM. All rights reserved- <a href=#class="css-13of8lt e19afand0">
Cookies, Privacy and Terms</a>
</span>
</footer>
    
    
    <!--javascripts-->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>

    </body>
</html>
