<%-- 
    Document   : AdminUserList
    Created on : Dec 5, 2018, 9:29:09 PM
    Author     : JC
--%>

<jsp:include page="headernav.jsp"/>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            table.usertable {
                margin-left:auto; 
                margin-right:auto;
            }
            
            hr{ 
                display: block;
                margin-top: 1.5em;
                margin-bottom: 3.5em;
                margin-left: auto;
                margin-right: auto;
                border-style: inset;
                border-width: 1px;
            } 
            .usertable {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
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
        </style>
    </head>
    <body>
       
        <h1 class="text-center tableheader">Admin List</h1>
<table class="usertable">
    <thead>
    <tr>
    <th>ID</th>
    <th>Last Name</th>
    <th>First Name</th>
    <th>Username</th>
    <th>Password</th>
    <th>Contact</th>
    <th></th>
    </tr>
    </thead>
    <tbody>
         <%
    try{
        Class.forName("com.mysql.jdbc.Driver");
       
      
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root","");    
        PreparedStatement pst = conn.prepareStatement("Select * from user where type = 'admin'");
        ResultSet rs = pst.executeQuery();  
      
        while(rs.next()){
          
%>
<tr>
    <td><%=rs.getString("user_id")%></td>
    <td><%=rs.getString("last_name")%></td>
    <td><%=rs.getString("first_name")%></td>
    <td><%=rs.getString("username")%></td>
    <td><%=rs.getString("password")%></td>
    <td><%=rs.getString("contact")%></td>
     <td><button id="<%=rs.getString("user_id")%>" class="btn btn-danger">Make Customer</button></td>
    
</tr>
    
    </tbody>
    <%
    }
    }catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
    %>
</table >
<hr>
<h1 class="text-center tableheader">Staff List</h1>
<table class="usertable">
    <thead>
    <tr>
    <th>ID</th>
    <th>Last Name</th>
    <th>First Name</th>
    <th>Username</th>
    <th>Password</th>
    <th>Contact</th>
    <th></th>
    <th></th>
    </tr>
    </thead>
    <tbody>
         <%
    try{
        Class.forName("com.mysql.jdbc.Driver");
       
      
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root","");    
        PreparedStatement pst = conn.prepareStatement("Select * from user where type = 'staff'");
        ResultSet rs = pst.executeQuery();  
      
        while(rs.next()){
          
%>
<tr>
    <td><%=rs.getString("user_id")%></td>
    <td><%=rs.getString("last_name")%></td>
    <td><%=rs.getString("first_name")%></td>
    <td><%=rs.getString("username")%></td>
    <td><%=rs.getString("password")%></td>
    <td><%=rs.getString("contact")%></td>
    <td><button id="<%=rs.getString("user_id")%>" class="btn btn-primary">Make Admin</button></td>
     <td><button id="<%=rs.getString("user_id")%>" class="btn btn-danger">Make Customer</button></td>
    
</tr>
    
    </tbody>
    <%
    }
    }catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
    %>
</table>
<hr>
<h1 class="text-center tableheader">Customer List</h1>
<table class="usertable">
    <thead>
    <tr>
    <th>ID</th>
    <th>Last Name</th>
    <th>First Name</th>
    <th>Username</th>
    <th>Password</th>
    <th>Contact</th>
    <th></th>
    <th></th>
    </tr>
    </thead>
    <tbody>
         <%
    try{
        Class.forName("com.mysql.jdbc.Driver");
       
      
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root","");    
        PreparedStatement pst = conn.prepareStatement("Select * from user where type = 'customer'");
        ResultSet rs = pst.executeQuery();  
      
        while(rs.next()){
          
%>
<tr>
    <td><%=rs.getString("user_id")%></td>
    <td><%=rs.getString("last_name")%></td>
    <td><%=rs.getString("first_name")%></td>
    <td><%=rs.getString("username")%></td>
    <td><%=rs.getString("password")%></td>
    <td><%=rs.getString("contact")%></td>
    <td><button id="<%=rs.getString("user_id")%>" class="btn btn-primary">Make Staff</button></td>
     <td><button id="<%=rs.getString("user_id")%>" class="btn btn-danger">Make Customer</button></td>
    
</tr>
    
    </tbody>
    <%
    }
    }catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
    %>
</table>
<hr>
    </body>
</html>
<script>
    
</script>