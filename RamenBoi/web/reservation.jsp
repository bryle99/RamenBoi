<%-- 
    Document   : reservation
    Created on : 11 Dec, 2018, 1:43:26 PM
    Author     : wabzs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="headernav.jsp"/>
<%@ page import ="java.sql.*" %>
<style>
    th{
        text-align: center;
    }
    tr{
        text-align: center;
    }
</style>
<!DOCTYPE html>
<body>
        <div class="container">
            <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
<%
    try{
        Class.forName("com.mysql.jdbc.Driver"); 
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root",""); 

        String ramen = request.getParameter("ramen");
        String branch = request.getParameter("branch");
        String preference = request.getParameter("preference");
        String toppings = request.getParameter("toppings");
        float price = new Float(request.getParameter("price")).floatValue();
        int userID = Integer.parseInt(session.getAttribute("userID").toString());

        PreparedStatement pst = conn.prepareStatement("INSERT INTO reservation (user_id, reservation_dateTime, ramen_base, branch_id, ramen_preference, ramen_toppings, total_price) VALUES ("+ userID +", now(), ?, "+ branch +", ?, ?,"+ price +")");
        pst.setString(1, ramen);
        pst.setString(2, preference);
        pst.setString(3, toppings);
        int rs = pst.executeUpdate();
        if(rs != 0){
            out.print("");
        }else{
            out.print("failed");
        }
    }catch(Exception e){       
       out.println("Something went wrong !! Please try again");  
    }
%>
            <table class="usertable" align="center">
               <thead>
               <tr>
               <th>Reservation ID</th>
               <th>Date</th>
               <th>Ramen Base<th>
               
               </tr>
               </thead>
               <tbody>
                    <%
               try{
                   Class.forName("com.mysql.jdbc.Driver");


                   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root","");    
                   PreparedStatement j = conn.prepareStatement("Select * from reservation where isPickedUp = '0' ORDER BY reservation_dateTime DESC LIMIT 1");
                   ResultSet res = j.executeQuery();  

                   while(res.next()){

           %>
           <tr>
               <td><%=res.getInt("reservation_id")%></td>
               <td><%=res.getString("reservation_dateTime")%></td>
               <td><%=res.getString("ramen_base")%></td>   
               
               <h1 style="text-align: center">Reservation success!</h1>
           </tr>

               </tbody>
               
               <%
               }
               }catch(Exception e){       
                  out.println("Something went wrong !! Please try again");       
               }      
               %>
        </table >
        <a href="home.jsp" class="btn btnramen" style="align: center">Go to Home</a>
        <a href="order_1.jsp" class="btn btnramen" style="align: center">Go back to Order</a>
    </body>
</html>
