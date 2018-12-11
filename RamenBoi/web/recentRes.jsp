<%-- 
    Document   : recentRes
    Created on : 12 11, 18, 10:49:52 PM
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<jsp:include page="headernav.jsp"/>

<html>
    <head><meta name="viewport" content="width=device-width, initial-scale=1"></head>
    <style>
            
          table.usertable {
                margin-left:auto;
                margin-right:auto;
            }
            
            hr{ 
                display: block;
                margin-top: 4.5em;
                margin-bottom: 4.5em;
                margin-left: auto;
                margin-right: auto;
                border-style: inset;
                border-width: 1px;
            } 
            
            .usertable {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                text-align: center;
                width: 92%;
            }

              .usertable td, .usertable th {
                border: 1px solid #ddd;
                padding: 8px;
            }

              .usertable tr:nth-child(even){background-color: #f2f2f2;}

              .usertable tr:hover {background-color: #ddd;}

              .usertable th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #f4bc42;
                color: white;
            }
            #adminoptions{
                margin-left: 12.5%;
            }
</style>
        <body>
                 <h1 class="text-center tableheader">Recent Reservations</h1>
        <table class="usertable">
    <thead>
    <tr>
    <th>Reservation ID</th>
    <th>Date</th>
    <th>Ramen base</th>
    <th>Branch</th>
    <th>Preference</th>
    <th>Toppings</th>
    <th>Total Price</th>
    <th>Pick up time</th>

    </tr>
    </thead>
    <tbody>
         <%
    try{
        Class.forName("com.mysql.jdbc.Driver");
       
      
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root","");    
        PreparedStatement j = conn.prepareStatement("Select * from reservation where isPickedUp = '1' ORDER BY pickUp_dateTime ASC LIMIT 10");
        ResultSet res = j.executeQuery();  
      
        while(res.next()){
          
%>
<tr>
    <td><%=res.getInt("reservation_id")%></td>
    <td><%=res.getString("reservation_dateTime")%></td>
    <td><%=res.getString("ramen_base")%></td>
    <td><%=res.getString("branch_id")%></td>
    <td><%=res.getString("ramen_preference")%></td>
    <td><%=res.getString("ramen_toppings")%></td>
    <td><%=res.getString("total_price")%></td>
    <td><%=res.getString("pickUp_dateTime")%></td>
    
</tr>
    
    </tbody>
    <%
    }
    }catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
    %>
</table >
            </body>
</html>
