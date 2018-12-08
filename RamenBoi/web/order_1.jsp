<%-- 
    Document   : order
    Created on : 11 24, 18, 12:30:24 AM
    Author     : Rafael
--%>

<%@page import="ramen.*"%>

<jsp:include page="headernav.jsp"/>

        <div class="container">
            <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
                     <div id="demo" class="carousel slide" data-ride="carousel" data-interval="false">
                         <ul class="carousel-indicators">
                           <li data-target="#demo" data-slide-to="0" class="active"></li>
                           <li data-target="#demo" data-slide-to="1"></li>
                           <li data-target="#demo" data-slide-to="2"></li>
                           <li data-target="#demo" data-slide-to="3"></li>
                         </ul>
                         <form name="orderinfo" id="orderinfo" method="POST" action="#">
                             
                       <div class="carousel-inner"> <!-- Start of carousel container -->
                           <div class="carousel-item active"> <!-- Start of carousel item 1 -->
                             <h1>Choose a branch</h1>
                             <div class="form-check">
                                <input class="form-check-input" type="radio" name="branch" id="Cordova" value="Cordova" checked>
                                    <label class="form-check-label" for="exampleRadios1">
                                        Cordova
                                    </label>
                                </br>
                                <input class="form-check-input" type="radio" name="branch" id="Mandaue" value="Mandaue">
                                    <label class="form-check-label" for="exampleRadios2">
                                        Mandaue
                                    </label>
                                </br>
                                <input class="form-check-input" type="radio" name="branch" id="Mandaue" value="Mandaue">
                                    <label class="form-check-label" for="exampleRadios2">
                                        Consolacion
                                    </label>
                             </div>
                          </div> <!-- End of carousel item 1 -->
                            
                        <div class="carousel-item"> 
                             <h1>Choose a Ramen base</h1>
                             <div class="form-check">
                                <input class="form-check-input" type="radio" name="ramenBase" id="tonkotsu" value="tonkotsu" checked>
                                    <label class="form-check-label" for="exampleRadios1">
                                        Tonkotsu Ramen
                                    </label>
                                </br>
                                <input class="form-check-input" type="radio" name="ramenBase" id="shoyu" value="shoyu">
                                    <label class="form-check-label" for="exampleRadios2">
                                        Shoyu Ramen
                                    </label>
                                </br>
                                <input class="form-check-input" type="radio" name="ramenBase" id="shio" value="shio">
                                    <label class="form-check-label" for="exampleRadios3">
                                        Shio Ramen
                                    </label>
                                </br>
                                <input class="form-check-input" type="radio" name="ramenBase" id="miso" value="miso">
                                    <label class="form-check-label" for="exampleRadios4">
                                        Miso Ramen
                                    </label>
                             </div>
                        </div>     <!-- End of carousel item -->
                           
                        <div class="carousel-item"> 
                            <div style="float:left;">
                             <h1>Ramen preference</h1>
                             <h4>Garlic</h4>    
                                <select name="garlic"> 
                                    <option>0</option>
                                    <option>1/2</option>
                                    <option>1</option>
                                    <option>2</option>
                                </select><br><br>
                                
                             <h4>Scallions</h4>
                             <div class="form-check">
                                <input class="form-check-input" type="radio" name="scallions" id="scallionYes" value="yes">
                                    <label class="form-check-label" for="scallionYES">
                                        Yes
                                    </label></br>
                                <input class="form-check-input" type="radio" name="scallions" id="scallionNo" value="no">
                                    <label class="form-check-label" for="scallionNO">
                                        No
                                    </label>
                             </div></br>
                             
                            <h4>Spiciness</h4>
                                <select name="spiceness">
                                    <option>No Spice</option>
                                    <option>Mild</option>
                                    <option>Medium</option>
                                    <option>Hot</option>
                                    <option>Very Hot</option>
                                </select><br><br>
                            </div>  
                        
                            <div style="float:right;">
                            <h4>Richness</h4>               
                                <select name="richness">
                                    <option>Light</option>
                                    <option>Medium</option>
                                    <option>Rich</option>
                                    <option>Very Rich</option>
                                </select><br><br>
                            <h4>Noodle Firmness</h4>               
                                <select name="noodle-firmness">
                                    <option>Extra Soft</option>
                                    <option>Soft</option>
                                    <option>Medium</option>
                                    <option>Firm</option>
                                    <option>Extra Firm</option>
                                </select><br><br> 
                            </div>
                        </div><!-- End of carousel item -->
                        
                        
                        
                        <div class="carousel-item"> 
                            <h1>Add Toppings</h1>
                                <label class="topping-checkbox">
                                    <input type="checkbox">Noodles
                                        <span class="checkmark"></span>
                                </label>
                        
                                <label>
                                    <input type="checkbox">Seaweed
                                        <span class="checkmark"></span>
                                </label> 
                        
                                <label>
                                    <input type="checkbox">Moyashi
                                        <span class="checkmark"></span>
                                </label> 
                        
                                <label>
                                    <input type="checkbox">Soft Boiled Egg
                                        <span class="checkmark"></span>
                                </label> 
                            <br><br>
                        <button class="btn btn-light m-1" type="submit">Check Out</button>   
                        </div> <!-- End of carousel item -->
                        
                       
                       </div> <!-- End of carousel container -->
                    
                           
                         </div>
                         <a class="carousel-control-prev" href="#demo" data-slide="prev">
                           <span class="carousel-control-prev-icon"></span>
                         </a>
                         <a class="carousel-control-next" href="#demo" data-slide="next">
                           <span class="carousel-control-next-icon"></span>
                         </a>
                       </div>

              </div>
            </div>
        </body>
</html>

<script>
    $(document).ready(function(){
        $('[data-toggle="popover"]').popover();
    });
</script>
</html>
