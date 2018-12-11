<%-- 
    Document   : checkout
    Created on : 4 Dec, 2018, 8:00:16 PM
    Author     : wabzs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ramen.*"%>
<jsp:include page="headernav.jsp"/>
<%@ page import ="java.sql.*" %>
<%
    String ramenbase, branch, spiciness, richness, noodle_firmness;
    String[] toppings;
    boolean scallions;
    int garlic;
    ramenBase ramen = null;
   
    //if(request.getParameter("submit") != null){
        ramenbase = request.getParameter("ramenBase");
        branch = request.getParameter("branch");
        garlic = Integer.parseInt(request.getParameter("garlic"));
        scallions = (request.getParameter("scallions").equals("yes")? true : false);
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
        
        ramen.setPreference(garlic, scallions, spiciness, richness, noodle_firmness);
    //}
         
%>
        <div class="container">    
        <div class="jumbotron p-3 p-md-3 text-white rounded bg-dark">
            <h1 id="headboi">Checkout</h1>
            <form action="reservation.jsp" method = "POST">
            <%      
                try{
                   Class.forName("com.mysql.jdbc.Driver"); 
                   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root",""); 
                                        
                   PreparedStatement pst = conn.prepareStatement("SELECT branch_location FROM branch WHERE branch_id=" + branch);
                   ResultSet rs = pst.executeQuery(); 
                   
                   if(rs.next()){
                       out.print("Branch: " + rs.getString("branch_location") + "<br>");
                   }    
                   
                }catch(Exception e){
                    out.println("Something went wrong !! Please try again");  
                }
                                            
                     
                out.print("Base Ramen: " + ramen.getDescription() + "<br>");
                out.print("Ramen Preference: " + ramen.getPreference() + "<br>");
                
                if(toppings != null){
                    int noodlesqty, seaweedqty, moyashiqty, eggqty;
                    noodlesqty = Integer.parseInt(request.getParameter("noodlesqty"));
                    seaweedqty = Integer.parseInt(request.getParameter("seaweedqty"));
                    moyashiqty = Integer.parseInt(request.getParameter("moyashiqty"));
                    eggqty = Integer.parseInt(request.getParameter("eggqty"));
                    
                    for (int i = 0; i < toppings.length; i++) {
                        if(toppings[i].equals("noodles")){
                            ramen.addToppings(new noodles(ramen), noodlesqty);
                        }else if(toppings[i].equals("seaweed")){
                            ramen.addToppings(new seaweed(ramen), seaweedqty);
                        }else if(toppings[i].equals("moyashi")){
                            ramen.addToppings(new moyashi(ramen), moyashiqty);
                        }else if(toppings[i].equals("egg")){
                            ramen.addToppings(new egg(ramen), eggqty);
                        }
                    }
                    out.print("Toppings: " + ramen.getToppings() + "<br>");
                    out.print("<input type='hidden' id='toppings' name='toppings' value='" + ramen.getToppings() + "'>");
                }
                
                out.print("Total Price:  " + ramen.getPrice());
            %>
            <br>
            <input type="hidden" id="ramen" name="ramen" value="<%= ramen.getDescription() %>">
            <input type="hidden" id="branch" name="branch" value="<%= branch %>">
            <input type="hidden" id="preference" name="preference" value="<%= ramen.getPreference() %>">
            <input type="hidden" id="price" name="price" value=<%= ramen.getPrice() %>>  
            <br>
            <a href="order_1.jsp" class="btn btnramen" role="button">Back</a>
            <button type="submit" class="btn btnramen">Confirm Reservation</button>
            </form>
        </div>
        </div>
                        
    </body>
</html>