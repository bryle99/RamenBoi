<%-- 
    Document   : order
    Created on : 11 24, 18, 12:30:24 AM
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <script type="text/javascript" charset="utf8" src="assets/js/bootstrap.min.js"></script>
        
        <title>Order</title>
    </head>
    <body>
        
        <div class="container">
            <header class="blog-header py-3 border-bottom border-dark">
                <div class="text-center"> <img id="ramenboi" src="assets/img/ramen-boy-logo.png"></div>
            </header>
            <ul class="nav nav-pills nav-fill">
                <li class="nav-item">
                  <a class="nav-link text-muted" href="home.jsp">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-muted" href="order.jsp">Order</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-muted" href="#">Link</a>
                </li>
            </ul>
            
            <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
                <div class="col-md-6 px-0">
        <div class="row">
            <div class="col-md-6 col-md-offset-5">
            </div>
            <div class="col-md-8 col-md-offset-5">
                <h1 id="headboi">Select a branch and Ramen </h1>
                    <form name="f1" id="chooseboi" method="get" action="success.jsp">
                        <select name="branch">
                            <option>Consolacion</option>
                            <option>Mandaue</option>   
                            <option>Liloan</option>
                            <option>Banilad</option>
                        </select>
                        
                        <select name="ramen">
                            <option>Tonkatsu Ramen</option>
                            <option>Shoyu Ramen</option>   
                            <option>Shio Ramen</option>
                            
                        </select>
                <input type="submit" value="Choose"/>
            </div>
        </div>
    </form>
 
    </body>
</html>
