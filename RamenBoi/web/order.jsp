<%-- 
    Document   : order
    Created on : 11 24, 18, 12:30:24 AM
    Author     : Rafael
--%>

<%@page import="ramen.*"%>

<jsp:include page="headernav.jsp"/>
        <div class="container">    
        <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
         
        <div class="row">
            <div class="col-md-6 col-md-offset-5">
            </div>
            <div class="col-md-8 col-md-offset-5">
                <h1 id="headboi">Select a branch and Ramen </h1>
                    <form name="orderinfo" id="orderinfo" method="POST" action="success.jsp">
                        <select name="branch">
                            <option>Consolacion</option>
                            <option>Mandaue</option>   
                            <option>Liloan</option>
                            <option>Banilad</option>
                        </select><br><br>
                        
                        <select name="ramen">
                            <option>Tonkatsu Ramen</option>
                            <option>Shoyu Ramen</option>   
                            <option>Shio Ramen</option>
                            <option>Miso Ramen</option>
                        </select><br><br>
                        <% 
                            miso object1 = new miso();
                            shio object2 = new shio();
                            shoyu object3 = new shoyu();
                            tonkotsu object4 = new tonkotsu();
                                                        
                            %>
                        
                        <select name="garlic"> 
                            <option>0</option>
                            <option>1/2</option>
                            <option>1</option>
                            <option>2</option>
                        </select><br><br>
                        <%garlic object5 = new garlic();%>
                            
                        <select name="scallions">
                            <option>yes</option>
                            <option>no</option>
                        </select><br><br>
                        <%scallions object6 = new scallions();%>
                        
                        <select name="spiceness">
                            <option>No Spice</option>
                            <option>Mild</option>
                            <option>Medium</option>
                            <option>Hot</option>
                            <option>Very Hot</option>
                        </select><br><br>
                         <%spiceness object7 = new spiceness();%>
                        
                        <select name="richness">
                            <option>Light</option>
                            <option>Medium</option>
                            <option>Rich</option>
                            <option>Very Rich</option>
                        </select><br><br>
                         <%richness object8 = new richness();%>
                        
                        <select name="noodle-firmness">
                            <option>Extra Soft</option>
                            <option>Soft</option>
                            <option>Medium</option>
                            <option>Firm</option>
                            <option>Extra Firm</option>
                        </select><br><br>
                        
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
                        
                        
                        <input type="submit" value="Choose"/>
                    </form>
            </div>
        </div>
        </div>
        </div>            
    </body>
</html>
