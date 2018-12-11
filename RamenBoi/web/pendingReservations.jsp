<%-- 
    Document   : pendingReservations
    Created on : Dec 11, 2018, 10:43:38 PM
    Author     : JC
--%>
<jsp:include page="headernav.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <script type="text/javascript" charset="utf8" src="assets/js/jQuery.js"></script>
        <script type="text/javascript" charset="utf8" src="assets/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <title>Pending Reservations</title>
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
    </head>
    <body>
        <div id="adminoptions">
            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#setPickedUpModal">Set as Picked Up</button>
        </div>
        <h1 class="text-center tableheader">Pending Reservations</h1>
        <table class="usertable">
    <thead>
    <tr>
    <th>Reservation ID</th>
    <th>User ID</th>
    <th>Ramen Base</th>
    <th>Preference</th>
    <th>Toppings</th>
    <th>Date Reserved</th>
    <th>Total Payment</th>
    <th>Branch ID</th>
    <th>Branch Location</th>
    

    </tr>
    </thead>
    <tbody>
         <%
    try{
        Class.forName("com.mysql.jdbc.Driver");
       
      
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root","");    
        PreparedStatement pst = conn.prepareStatement("SELECT b.*, r.* FROM reservation r JOIN branch b on b.branch_id = r.branch_id WHERE r.isPickedUp = 0 ORDER BY r.reservation_dateTime ASC LIMIT 10");
        ResultSet rs = pst.executeQuery();  
      
        while(rs.next()){
          
%>
<tr>
    <td><%=rs.getString("reservation_id")%></td>
    <td><%=rs.getString("user_id")%></td>
    <td><%=rs.getString("ramen_base")%></td>
    <td><%=rs.getString("ramen_preference")%></td>
    <td><%=rs.getString("ramen_toppings")%></td>
    <td><%=rs.getString("reservation_dateTime")%></td>
    <td><%=rs.getString("total_price")%></td>
    <td><%=rs.getString("branch_id")%></td>
    <td><%=rs.getString("branch_location")%></td>
</tr>
    
    </tbody>
    <%
    }
    }catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
    %>
</table >


<div id="setPickedUpModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"></h4>
      </div>
      <div class="modal-body">
            <form  onsubmit="return confirm('Are You Sure?');" action="setPickedUp.jsp" >
                <label for="id"> Reservation ID: </label>
                <input  type='text' name="id" class="form-control">
                
                <br><br>
                <input type="submit" class="btn btn-success">
            </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
    </body>
</html>
