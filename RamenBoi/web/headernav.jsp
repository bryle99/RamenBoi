 <%-- 
    Document   : headernav
    Created on : 11 24, 18, 4:44:21 AM
    Author     : bryle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="assets/css/open-iconic-bootstrap.css">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <script type="text/javascript" charset="utf8" src="assets/js/jQuery.js"></script>
        <script type="text/javascript" charset="utf8" src="assets/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        
        
        <title>Ramen Boi</title>
        <style>

  
        </style>
        <title>Order</title>
    </head>
    <body>
        <hr id="tophr">
        <div class="dropdown" id="dropdownmenu">
            <button class="dropbtn btn">Hello, <% out.println(session.getAttribute("userFname")); %></button>
            <div class="dropdown-content">
              <%
                  if(session.getAttribute("userType").equals("admin")){
                      out.println("<a href='AdminUserList.jsp'>User List</a>");
                      out.println("<a href='pendingReservations.jsp'>Pending Reservations</a>");
                      out.println("<a href='recentRes.jsp'>Recent Reservations</a>");
                  }else if(session.getAttribute("userType").equals("staff")){
                      out.println("<a href='StaffUserList.jsp'>User List</a>");
                      out.println("<a href='PendingReservations.jsp'>Pending Reservations</a>");
                  }else if (session.getAttribute("userType").equals("customer")){
                      out.println("<a href='userProfile.jsp'>Profile</a>");                    
                  }
              %>
              <a href="login.jsp">Log Out</a>
              
              
            </div>
        </div>
        <div class="container">
            <header class="blog-header py-3 border-bottom border-dark">
                <div class="row flex-nowrap justify-content-between align-items-center">
                  <div class="col-4 pt-1">
                  
                  </div>
                  <div class="col-4-md-4" id="headerImg">
                        <img id="ramenboi" src="assets/img/ramen-boy-logo.png">
                  </div>
                  <div class="col-4 d-flex justify-content-end align-items-center">
                    <!--
                    <span class="oi oi-person"></span>
                    <a class="btn btn-sm btn-outline-secondary" href="#">   Sign up</a>
                    -->
                  </div>
                </div>
              </header>
            
            <ul class="nav nav-pills nav-fill mb-5">
                <li class="nav-item">
                  <a class="link nav-link" href="home.jsp">Home</a>
                </li>
                <li class="nav-item">
                  <a class="link nav-link" href="order_1.jsp">Order</a>
                </li>
                <li class="nav-item">
                  <a class="link nav-link" href="info.jsp">Info</a>
                </li>                
                <li class="nav-item">
                  <a class="link nav-link" href="mailto:contactjohndelmar@gmail.com?Subject=Send Ramenboi your feedback">Contact us</a>
                </li>
            </ul>
        </div>
        
