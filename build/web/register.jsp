<%-- 
    Document   : register
    Created on : Jul 11, 2023, 4:55:51 PM
    Author     : hp
--%>

<%@page import="com.the.gym.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<link rel="stylesheet" href="style.css" type="text/css" />

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>The GYM</title>
<style>
     .css-ashsjf{
          position: fixed;
   bottom: 0;
   width: 100%;
   
          
      }
    body{
        background-image: url(images/bg1.jpg);
        background-repeat: no-repeat;
        background-size: cover;
        
    }   
    
  </style>

</head>

<body>
    <%@ include file="navbar.jsp" %>
      
    <%   response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
      response.setHeader("pragma","no-cache");
      response.setHeader("Expires","0");%>
    

	
	<main  class="  p-6 m-10 align-items-center">

	<div class=" container  "  style="padding-bottom: 80px;">

		

			<div class="col-md-6 offset-md-3">

				<div class="card  ">

					<div class="card-header bg-dark text-light text-center">

						  <span class="fa fa-user-plus fa-3x"></span>
						 <br>
						 Sign-in

					</div>
                                    
                                     <% 
                           Message m=(Message)session.getAttribute("msg");
                           if(m!=null){
                           %>
                            
                           <div class="alert "<%= m.getCssClass()%>  role="alert">
                                <%=  m.getContent () %> 
                                 <a href="login.jsp" class="btn bg-dark text-light">   Login Here</a>
                           </div>
                            
                            <%
                           session.removeAttribute("msg");
                           
                               }
                           
                           
                           %>
                                     <% 
                           Message ms=(Message)session.getAttribute("ms");
                           if(ms!=null){
                           %>
                            
                           <div class="alert "<%= ms.getCssClass()%>  role="alert">
                                <%=  ms.getContent () %> 
                                 
                           </div>
                            
                            <%
                           session.removeAttribute("ms");
                           
                               }
                           
                           
                           %>
                                    
					<div class="card-body">	

					<form action="RegisterServlet" method="post">
                    
						<div class="form-group">

							<label for="name">Name</label> <input type="text"
								class="form-control" required name="name" placeholder="Enter Name">
						</div>


						<div class="form-group">
							<label for="age">Date of birth</label> <input type="date"
								class="form-control" name="age" required placeholder="Enter Age">
						</div>

						<div class="form-group">
							<label for="city">City</label> <input type="text"
								class="form-control" name="city"  required placeholder="Enter City">
						</div>

						<div class="form-group">
							<label for="Email1">Email address</label> <input type="email"
								class="form-control" name="email" required aria-describedby="emailHelp"
								placeholder="Enter email">
						</div>

						<div class="form-group">
							<label for="phone">Phone</label> <input type="number"
								class="form-control" required name="phone" placeholder="Enter Phone">
						</div>
						<div class="form-group">
							<label for="password">Password</label> <input type="password"
								class="form-control" name="password" required placeholder="Password">
						</div>
					
					
                                        
                                                 <div class="form-group">
                                    <label for="gender">Select Gender</label>
                                    <br>
                                    <input type="radio"  id="gender" name="gender" value="male" >Male
                                    <input type="radio"  id="gender" name="gender" value="famale">Female
                                </div>
                                                            <div class="form-check">
                                    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">agree terms and conditions</label>
                                </div>

                                              	<button type="submit" class="btn btn-dark">Submit</button>
                                        
                                        </form>
                                            
					</div>
				
				</div>

			</div>
		</div>
	</main>
	<div ></div>
	
      
        
        
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
