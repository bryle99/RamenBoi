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
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <script type="text/javascript" charset="utf8" src="assets/js/bootstrap.min.js"></script>
    </head>
    <body>
        <!--
                <div>
                    <form action="validate.jsp" method = "POST">
                        
                        Username : <input type = "text" name = "user" placeholder = "DEEZ NUTS"><br>
                        Password : <input type ="text" name ="pass" placeholder = "LMAO GOT EM"><br>
                        <input type ="submit" >
                        
                    </form> 
                </div>
        -->
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
                <p class="mt-5 mb-3 text-muted">© 2017-2018</p>
              </form>
        </div>
    </body>
</html>
