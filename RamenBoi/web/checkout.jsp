<%-- 
    Document   : checkout
    Created on : 4 Dec, 2018, 8:00:16 PM
    Author     : wabzs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ramen.*"%>
<jsp:include page="headernav.jsp"/>
<%
    String ramenbase, branch, garlic, spiciness, richness, noodle_firmness;
    String[] toppings;
    boolean scallions;
    ramenBase ramen = null;
   
    //if(request.getParameter("submit") != null){
        ramenbase = request.getParameter("ramenBase");
        branch = request.getParameter("branch");
        garlic = request.getParameter("garlic");
        spiciness = request.getParameter("spiciness");
        richness = request.getParameter("richness");
        noodle_firmness = request.getParameter("noodle_firmness");
        toppings = request.getParameterValues("topping");
        
        if(ramenbase.equals("tonkotsu")){
            ramen = new tonkotsu();          
        }else if(ramenbase.equals("shoyu")){
            ramen = new shoyu();
        }else if(ramenbase.equals("shio")){
            ramen = new shio();
        }else if(ramenbase.equals("miso")){
            ramen = new miso();
        }
        
    //}
         
%>
        <div class="container">    
        <div class="jumbotron p-3 p-md-3 text-white rounded bg-dark">
            <h1 id="headboi">Checkout</h1>
            <form action="reservation.jsp" method = "POST">
            <%
                out.print("Base Ramen: " + ramen.getDescription() + "<br>");
                //out.print(toppings.length);

                if(toppings != null){
                    for (int i = 0; i < toppings.length; i++) {
                        if(toppings[i].equals("noodles")){
                            ramen.addToppings(new noodles(ramen));
                        }else if(toppings[i].equals("seaweed")){
                            ramen.addToppings(new seaweed(ramen));
                        }else if(toppings[i].equals("moyashi")){
                            ramen.addToppings(new moyashi(ramen));
                        }else if(toppings[i].equals("egg")){
                            ramen.addToppings(new egg(ramen));
                        }
                    }
                    out.print("Toppings: " + ramen.getToppings() + "<br>");
                    out.print("<input type='hidden' id='toppings' name='toppings' value='" + ramen.getToppings() + "'>");
                }
                
                out.print("Total Price:  " + ramen.getPrice());
            %>
            <input type="hidden" id="ramen" name="ramen" value="<%= ramen.getDescription() %>">
            <input type="hidden" id="branch" name="branch" value="<%= branch %>">
            <input type="hidden" id="" name="" value="">
            <input type="hidden" id="price" name="price" value="<%= ramen.getPrice() %>">
            </form>
            <br>
            <a href="order_1.jsp" class="btn btn-light" role="button">Back</a>
            <button type="submit" class="btn btnramen">Confirm Reservation</button>
        </div>
        </div>
                        
    </body>
</html>