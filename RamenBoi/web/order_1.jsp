<%-- 
    Document   : order
    Created on : 11 24, 18, 12:30:24 AM
    Author     : Rafael
--%>

<%@page import="ramen.*"%>

<jsp:include page="headernav.jsp"/>

        <div class="container">
            <div class="jumbotron p-2 p-md-4 text-white rounded bg-dark">

                     <div id="demo" class="carousel slide" data-ride="carousel" data-interval="false">                       
                         <form name="orderinfo" id="orderinfo" method="POST" action="checkout.jsp">                             
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
                             <div>
                                <div class="form-check">
                                   <input class="form-check-input" type="radio" name="ramenBase" id="tonkotsu" value="tonkotsu" checked>
                                       <label class="form-check-label" for="tonkotsu">
                                           <% tonkotsu t = new tonkotsu(); out.print(t.getDescription());%>
                                       </label>
                                   </br>
                                   <input class="form-check-input" type="radio" name="ramenBase" id="shoyu" value="shoyu">
                                       <label class="form-check-label" for="shoyu">
                                           <% shoyu sh = new shoyu(); out.print(sh.getDescription());%> 
                                       </label>
                                   </br>
                                   <input class="form-check-input" type="radio" name="ramenBase" id="shio" value="shio">
                                       <label class="form-check-label" for="shio">
                                           <% shio s = new shio(); out.print(s.getDescription());%>
                                       </label>
                                   </br>
                                   <input class="form-check-input" type="radio" name="ramenBase" id="miso" value="miso">
                                       <label class="form-check-label" for="miso">
                                           <% miso m = new miso(); out.print(m.getDescription());%>
                                       </label>
                                </div>
                             </div>
                        </div>     <!-- End of carousel item -->
                           
                        <div class="carousel-item">
                             <h1>Ramen preference</h1>
                            <div class="row mb-2">
                                <div class="col-md-2">
                                    <h4>Garlic</h4>    
                                       <select name="garlic"> 
                                           <option>0</option>
                                           <option>1/2</option>
                                           <option>1</option>
                                           <option>2</option>
                                       </select>
                                </div>
                                <div class="col-md-">
                                    <h4>Scallions</h4>
                                    <div class="form-check-inline">            
                                           <label class="form-check-label" for="scallionYES">
                                               <input class="form-check-input" type="radio" name="scallions" id="scallionYes" value="yes">Yes
                                           </label>            
                                    </div>
                                    <div class="form-check-inline">
                                           <label class="form-check-label" for="scallionNO">
                                                       <input class="form-check-input" type="radio" name="scallions" id="scallionNo" value="no">No
                                           </label>
                                     </div>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-md-2">
                                    <h4>Spiciness</h4>
                                        <select name="spiciness">
                                            <option>No Spice</option>
                                            <option>Mild</option>
                                            <option>Medium</option>
                                            <option>Hot</option>
                                            <option>Very Hot</option>
                                        </select><br><br>

                               </div>
                               <div class="col-md-2">
                                    <h4>Richness</h4>               
                                        <select name="richness">
                                            <option>Light</option>
                                            <option>Medium</option>
                                            <option>Rich</option>
                                            <option>Very Rich</option>
                                        </select>
                               </div>
                               <div class="col-md-3">
                                    <h4>Noodle Firmness</h4>               
                                        <select name="noodle_firmness">
                                            <option>Extra Soft</option>
                                            <option>Soft</option>
                                            <option>Medium</option>
                                            <option>Firm</option>
                                            <option>Extra Firm</option>
                                        </select>
                               </div>
                            </div>
                        </div><!-- End of carousel item -->
                        
                        
                        
                        <div class="carousel-item"> 
                            <h1>Add Toppings</h1>
                                <div class="form-check-inline">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" name= "topping" value="Noodles">Noodles 
                                    </label>
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" name="topping" value="Seaweed">Seaweed 
                                    </label>
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" name="topping" value="Moyashi">Moyashi 
                                    </label>
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" name="topping" value="Soft Boiled Egg">Soft Boiled Egg 
                                    </label>
                                </div><br>
                            <button class="btn btn-light m-1" type="submit">Check Out</button>   
                        </div> <!-- End of carousel item -->
                        
                       
                      </div> <!-- End of carousel container -->
                    
                         </form> 
                         
                           
                    </div> 
                    <a class="carousel-control-prev" href="#demo" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#demo" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>                  
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