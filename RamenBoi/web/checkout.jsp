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
    
    if(request.getParameter("submit") != null){
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
        
        
    }
         
%>
        <div class="container">    
        <div class="jumbotron p-3 p-md-3 text-white rounded bg-dark">
            <h1 id="headboi">Checkout</h1>
            <a href="order_1.jsp" class="btn btn-light" role="button">Back</a>      
        </div>
        </div>
                        
    </body>
</html>