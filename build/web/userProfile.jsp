
<%@page import="com.the.gym.entities.Message"%>
<%@page import="com.the.gym.entities.User"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%
     
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
    session.setAttribute("msg", "You are not logged in! Login First");
        response.sendRedirect("login.jsp");
    }


%>
<!DOCTYPE html>
<html>
    <head>
        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
         .css-ashsjf{
          text-align: center;
   bottom: 0;
   width: 100%;
   
          
      }
            </style>
            </head>
  <body>   
            
    <%   response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
      response.setHeader("pragma","no-cache");
      response.setHeader("Expires","0");
    

    
    
    %>



<nav class="navbar navbar-expand-lg navbar-dark bg-info text-white">
    <a class="navbar-brand display-5" href="index.jsp">    TheGym</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp"> <span class="	fa fa-laptop-house"></span> Home <span class="sr-only">(current)</span></a>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="	fa fa-check-square-o">Services</span> 
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Fitness Programs</a>
                    <a class="dropdown-item" href="#">Diet Implementation</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">About</a>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="contact.jsp"> <span class="	fa fa-address-card-o"></span> Contact</a>
            </li>
        </ul>
        
        <ul class="navbar-nav mr-right">
                    <li class="nav-item">
                        <a class="nav-link" href=# data-toggle="modal" data-target="#profile-modal">  <%= user.getName()%> </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="LogoutServlet"> <span class="fa fa-user "></span> Logout</a>
                    </li>
                </ul>
      
    </div>
</nav>

        <!--end of navbar-->

            
     <div class="container-fluid p-0 mb-4 m-0 align-items-center">

   <div class="jumbotron bg-info  text-light text-center">
      <div class="container">  
  
  </header>
  <main>
    <h1 class="display-3 align-text-center">Welcome,<%= user.getName ()%> </h1>
    <h3 class="display-4">To The Profile</h3>
    <section class="content">
      
      
      </div>
   </div>
    <h2><b>Fitness Workouts</b></h2>
     
      <div class="container">

  <div class="row">
  
    <div class="col-md-4">
      <div class="card">
        
        <div class="card-content">
          <h3>Cardio Blast</h3>
          <p>Get your heart pumping with this intense cardio workout. Burn calories, improve endurance, and strengthen your cardiovascular system.</p>
        </div>
      </div>
      <div class="card">
        
        <div class="card-content">
          <h3>Strength Training</h3>
          <p>Build strength and muscle tone with our targeted strength training exercises. Enhance your overall fitness and achieve your desired physique.</p>
        </div>
      </div>
      <div class="card">
        
        <div class="card-content">
          <h3>Yoga and Mindfulness</h3>
          <p>Find balance and tranquility through our yoga and mindfulness sessions. Improve flexibility, reduce stress, and connect with your inner self.</p>
        </div>
      </div>
     
      <!-- ...continue with more workout cards -->
      </section>
    

  
    


           
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

