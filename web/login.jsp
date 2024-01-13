
<%@page import="com.the.gym.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style>
            .jumbotron{
                background-image: url("images/bg1.jpg");
                background-repeat: no-repeat;
        background-size: cover;
       
            }

           
.card-body{
    opacity:90%;
}
            
        </style>
    </head>
    <body>
        
 
        
    <%   response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
      response.setHeader("pragma","no-cache");
      response.setHeader("Expires","0");
    

    
    
    %>
           <%@include file="navbar.jsp" %>    
    <div class="jumbotron bg-light text-dark">
             
      <div class="container">  
  
                <main class="d-flex align-items-center " style="height: 70vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">

                        <div class="card">
                            <div class="card-header bg-dark text-white text-center">
                                <span class="fa fa-user-plus fa-3x"></span>
                                <br>
                                <p>Login here</p>
                            </div>
                           <% 
                           Message m=(Message)session.getAttribute("msg");
                           if(m!=null){
                           %>
                            
                           <div class="alert "<%= m.getCssClass()%>  role="alert">
                                <%=  m.getContent () %>
                            </div>
                            
                            <%
                           session.removeAttribute("msg");
                           
                               }
                           
                           
                           %>
                            
                            
                            
                            <div class="card-body ">
                                <form action="LoginServlet" method="post">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input name="password" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                    </div>

                                    <div class="container text-center">
                                        <button type="submit" class="btn btn-dark">Login</button>
                                    </div>
                                     <div class="containerF text-center">
                                        <a class="" type="button" href="forgotPassword.jsp">Forgot password?</a>
                                    </div>
                                </form>

                            </div>


                        </div>



                    </div>


                </div>

            </div>

        </main>
      </div>
   </div>
         </div>
         <div>
                                       <footer class=" css-ashsjf eu4oa1w0   text-center">
<span class="css-16m72qo e1wnkr790 ">
©2023 TheGYM. All rights reserved- <a href=#class="css-13of8lt e19afand0">
Cookies, Privacy and Terms</a>
</span>
</footer>

        
         </div>


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
