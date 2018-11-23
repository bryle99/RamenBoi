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
         <header class="blog-header py-3 border-bottom border-dark">
                <div class="text-center"><h1>Ramen <span class="boi">Boi</span></h1></div>
            </header>
            <ul class="nav nav-pills nav-fill">
                <li class="nav-item">
                  <a class="nav-link text-muted" href="#">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-muted" href="order.jsp">Order</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-muted" href="#">Link</a>
                </li>
            </ul><br><br>
                <div>
                    <form action="validate.jsp" method = "POST">
                        
                        Username : <input type = "text" name = "user" placeholder = "DEEZ NUTS"><br>
                        Password : <input type ="text" name ="pass" placeholder = "LMAO GOT EM"><br>
                        <input type ="submit" >
                        
                    </form> 
                </div>
    </body>
</html>
