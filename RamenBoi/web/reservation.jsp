<%-- 
    Document   : reservation
    Created on : 11 Dec, 2018, 1:43:26 PM
    Author     : wabzs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="headernav.jsp"/>
<%@ page import ="java.sql.*" %>

<!DOCTYPE html>

<%    
    try{
        Class.forName("com.mysql.jdbc.Driver"); 
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root",""); 

        String ramen = request.getParameter("ramen");
        String branch = request.getParameter("branch");
        String ramen_preference;
        String toppings = request.getParameter("toppings");
        float price = new Float(request.getParameter("price")).floatValue();

        PreparedStatement pst = conn.prepareStatement("INSERT INTO reservation (reservation_dateTime, ramen_base, branch_id, ramen_preference, ramen_toppings, total_price) VALUES (now(), ?, 1, 'kek', ?,"+ price +" )");
        pst.setString(1, ramen);
        pst.setString(2, toppings);
        int rs = pst.executeUpdate();
        if(rs != 0){
            out.print("success");
        }else{
            out.print("failed");
        }
    }catch(Exception e){
        out.println("Something went wrong !! Please try again");  
    }
%>

    </body>
</html>
