<%-- 
    Document   : login
    Created on : Nov 24, 2018, 4:28:21 AM
    Author     : JC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Log in</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <script type="text/javascript" charset="utf8" src="assets/js/jQuery.js"></script>
        <script type="text/javascript" charset="utf8" src="assets/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .registerLabel{
                margin-top: 1em;
            }
            .registerSubmit{
                margin-top: 2em;
                margin-left: 42%;
            }
        </style>
    </head>
    <body>
        <div class="my-4 container text-center">
            <form class="form-signin" action="validate.jsp" method = "POST">
                <img class="" src="assets/img/ramen-boy-logo.png" alt="" width="320" height="150">
                <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
                <label for="inputEmail" class="sr-only">Email address</label>
                <input type="email" name="email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
                
                <label for="inputPassword" class="sr-only">Password</label>
                <input type="password" name="pass" id="inputPassword" class="form-control" placeholder="Password" required="">
                
                <div class="checkbox mb-3">
                  <label>
                    <input type="checkbox" value="remember-me"> Remember me
                  </label>
                </div>
                <button class="btn btn-lg btn-dark btn-block" type="submit">Sign in</button>
               
            
              </form>
            Dont Have an account? Register <a data-target="#registermodal" data-toggle="modal" href="#registermodal">Here.</a>
            
                <p class="mt-5 mb-3 text-muted">©BirdBoys 2017-2018</p>
           
        </div>
        
        <!--REGISTRATION MODAL-->
      
        <div id="registermodal" class="modal fade" role="dialog">
          <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">Register an Account.</h4>
              </div>
              <div class="modal-body">
                  <form action="register.jsp" method="POST">
                       <label for="email" class="registerLabel">Email:</label>
                       <input type="email" name="useremail" id="emailinput" class="form-control" placeholder="sample@sample.com" required="" autofocus="">
                       <label for="password" class="registerLabel">Password:</label>
                       <input type="password" name="userpassword" class="form-control">
                       <label for="fname" class="registerLabel">First Name:</label>
                       <input type="text" name="fname" class="form-control">
                       <label for="lname" class="registerLabel">Last Name:</label>
                       <input type="text" name="lname" class="form-control">
                       <input type='submit' class='btn btn-success registerSubmit'>
                  </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
            </div>

          </div>
        </div>
        
    </body>
</html>
<script>
    <%
        if(session.getAttribute("invalidLogin") != null && session.getAttribute("invalidLogin").equals(1)){
            out.println("alert('Invalid E-mail / Password.')");
        }
         if(session.getAttribute("Inactive") != null && session.getAttribute("Inactive").equals(1)){
            out.println("alert('Your Account is Inactive.')");
        }
         if(session.getAttribute("registerSuccess") != null && session.getAttribute("registerSuccess").equals(1)){
            out.println("alert('Registration Successful.')");
        }
         session.invalidate();
    %>
    
</script>
