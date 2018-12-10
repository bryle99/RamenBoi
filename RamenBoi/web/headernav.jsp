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
        
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <link rel="stylesheet" type="text/css" href="assets/css/open-iconic-bootstrap.css">
        <script type="text/javascript" charset="utf8" src="assets/js/jQuery.js"></script>
        <script type="text/javascript" charset="utf8" src="assets/js/bootstrap.min.js"></script>
        
        
        <title>Ramen Boi</title>
        <style>
            #headerImg{
                margin-left: -4%;
            }
            
            #tophr{
                margin-top: 2em;
            }
            
            #dropdownmenu{
                margin-left: 74%;
            }
            
            .dropbtn {
                background-color: #C7B581;
                color: white;
                padding: 16px;
                font-size: 16px;
                border: none;
            }

            .dropdown {
                position: relative;
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f1f1f1;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            .dropdown-content a:hover {background-color: #ddd;}

            .dropdown:hover .dropdown-content {display: block;}

            .dropdown:hover .dropbtn {background-color: #3e8e41;}

  
        </style>
        <title>Order</title>
    </head>
    <body>
        <hr id="tophr">
        <div class="dropdown" id="dropdownmenu">
            <button class="dropbtn">Hello, <% out.println(session.getAttribute("userFname")); %></button>
            <div class="dropdown-content">
              <%
                  if(session.getAttribute("userType").equals("admin")){
                      out.println("<a href='AdminUserList.jsp'>User List</a>");
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
                  <a class="link nav-link" href="#">Branch</a>
                </li>                
                <li class="nav-item">
                  <a class="link nav-link" href="#">Contact us</a>
                </li>
            </ul>
        </div>
        