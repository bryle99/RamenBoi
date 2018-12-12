<%-- 
    Document   : StaffUserList
    Created on : Dec 11, 2018, 4:13:41 PM
    Author     : JC
--%>
<jsp:include page="headernav.jsp"/>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
      <head>
         

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
                width: 75%;
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
                background-color: #2e2e2e;
                color: white;
            }
            #adminoptions{
                margin-left: 12.5%;
            }
        </style>
    </head>
    <body>
        <div id="adminoptions">
            <button type="button" class="btn btnramenmaroon btn-lg" data-toggle="modal" data-target="#changeTypeModal">Change Type</button>
            <button type="button" class="btn btnramenmaroon btn-lg" data-toggle="modal" data-target="#deleteUserModal">Active Status</button>
        </div>
        <h1 class="text-center tableheader">Staff List</h1>
<table class="usertable">
    <thead>
    <tr>
    <th>ID</th>
    <th>Last Name</th>
    <th>First Name</th>
    <th>Password</th>

    </tr>
    </thead>
    <tbody>
         <%
    try{
        Class.forName("com.mysql.jdbc.Driver");
       
      
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root","");    
        PreparedStatement pst = conn.prepareStatement("Select * from user where type = 'staff' AND isActive = 1");
        ResultSet rs = pst.executeQuery();  
      
        while(rs.next()){
          
%>
<tr>
    <td><%=rs.getString("user_id")%></td>
    <td><%=rs.getString("last_name")%></td>
    <td><%=rs.getString("first_name")%></td>
    <td><%=rs.getString("password")%></td>
    
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
    </tr>
    </thead>
    <tbody>
         <%
    try{
        Class.forName("com.mysql.jdbc.Driver");
       
      
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root","");    
        PreparedStatement pst = conn.prepareStatement("Select * from user where type = 'customer' AND isActive = 1");
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
<h1 class="text-center tableheader">Inactive User List</h1>
<table class="usertable">
    <thead>
    <tr>
    <th>ID</th>
    <th>Last Name</th>
    <th>First Name</th>
    <th>Username</th>
    <th>Password</th>
    <th>Contact</th>
    <th>Type</th>
    </tr>
    </thead>
    <tbody>
         <%
    try{
        Class.forName("com.mysql.jdbc.Driver");
       
      
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root","");    
        PreparedStatement pst = conn.prepareStatement("Select * from user where isActive = 0");
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
    <td><%=rs.getString("type")%></td>
    
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
<!-- Change Type Modal -->
<div id="changeTypeModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"></h4>
      </div>
      <div class="modal-body">
            <form  onsubmit="return confirm('Do you really want to submit the form?');" action="setType.jsp" >
                <label for="id"> User ID: </label>
                <input  type='text' name="id" class="form-control">
                <label for="type"> Choose New User Type: </label>
                <select name='type' class="form-control">
                    <option></option>
                    <option>Staff</option>
                    <option>Customer</option>
                </select>
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

<div id="deleteUserModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"></h4>
      </div>
      <div class="modal-body">
            <form  onsubmit="return confirm('Do you really want to submit the form?');" action="deleteUser.jsp" >
                <label for="id"> User ID: </label>
                <input  type='text' name="id" class="form-control">
                <label for="type"> Set Active Status:  </label>
                <select name='isActive' class="form-control">
                    <option></option>
                    <option>Active</option>
                    <option>Inactive</option>
                </select>
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
