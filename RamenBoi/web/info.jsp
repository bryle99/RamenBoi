<%-- 
    Document   : info
    Created on : 12 11, 18, 5:12:19 PM
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <jsp:include page="headernav.jsp"/>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
    body {
      position: relative;
    }
    
    .nav-info{
        position: fixed;
    }
    div.col-8 div {
      height: 500px;
    }
    .nav-link {
        color: red !important;
    }
    .chef{
        height:500px;
        width: 270px;
        display: block;
        margin: 0 auto;
    }
    h3{
        text-align: center;
    }
    .jumbotron{
        height: 170em;
    }
  
</style>
</head>
        <body>
        <div class="container">
            <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
                
                <body data-spy="scroll" data-target="#myScrollspy" data-offset="1">

                <div class="container-fluid">
                  <div class="row">
                    <nav class="col-sm-3 col-4" id="myScrollspy">
                      <ul class="nav nav-info flex-column">
                        <li class="nav-item">
                          <a class="nav-link" href="#section1">About Us</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#section2">Branches</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#section3">Our proud Chefs</a>
                        </li>
                      </ul>
                    </nav>
                    <div class="col-sm-9 col-8">
                      <div id="section1" class="">    
                        <h1>About RamenBoi</h1>
                        </br>
                        <p>At <b>RamenBoi</b> we don’t diversify our menu, but concentrate only on the best Ramen. Ramen is offered in a wide range of types, from those based on soy sauce, salt, or miso paste, as well as varying broths like seafood-based broths or meat-based broths. The safety and satisfaction of our customers is our priority. That is why we only use the highest-in-quality products for the creation of our ramen. Our professionals are masters of the complicated techniques involved in ramen making, and they always pursue a higher level of exquisiteness for our customers.
                            Our mission is a quest for new ideas, a thorough search for new ways of bringing more delight to the palate of our customers.</p>
                      </div>
                      <div id="section2" class=""> 
                        <h1>Branches</h1>
                        <p>Try to scroll this section and look at the navigation list while scrolling!</p>
                      </div>        
                      <div id="section3" class="">         
                        <h1>Our proud chefs</h1>
                        <br>
                        <img class="chef" src="assets/img/Japchef.png">
                        <h3>Sous chef</h3>
                        <h3>Chef Francis Von Dominic Suson Arimbay</h3>
                        <br><br>
                        <img class="chef" style="text-align:center" src="assets/img/RegChef.png">
                        <h3>Chef de Cuisine</h3>
                        <h3>Chef Chad Arimbay</h3>
                      </div>
             
                      
                    </div>
                  </div>
                </div>
                
            </div>
        </div>
</html>
