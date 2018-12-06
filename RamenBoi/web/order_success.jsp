<%-- 
    Document   : branch
    Created on : 11 24, 18, 1:10:38 AM
    Author     : Rafael
--%>
<a href="order.jsp"></a>
<%@ page import ="java.sql.*" %>
<%
    try{
        String[] toppings;
        Class.forName("com.mysql.jdbc.Driver");
        toppings = new String[20];
        String branch = request.getParameter("branch");   
        String base = request.getParameter("base");
        String garlic = request.getParameter("garlic");
        String scallions = request.getParameter("scallions");
        String spiceness = request.getParameter("spiceness");
        String richness = request.getParameter("richness");
        String noodleFirmness = request.getParameter("noodle-firmness");
        
        
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>