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
                        /* The Modal (background) */
            .modal {
              display: none; /* Hidden by default */
              position: fixed; /* Stay in place */
              z-index: 1; /* Sit on top */
              left: 0;
              top: 0;
              width: 100%; /* Full width */
              height: 100%; /* Full height */
              overflow: auto; /* Enable scroll if needed */
              background-color: rgb(0,0,0); /* Fallback color */
              background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            }

            /* Modal Content/Box */
            .modal-content {
              background-color: #fefefe;
              margin: 15% auto; /* 15% from the top and centered */
              padding: 20px;
              border: 1px solid #888;
              width: 80%; /* Could be more or less, depending on screen size */
            }

            /* The Close Button */
            .close {
              color: #aaa;
              float: right;
              font-size: 28px;
              font-weight: bold;
            }

            .close:hover,
            .close:focus {
              color: black;
              text-decoration: none;
              cursor: pointer;
            }
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
    <th></th>
    </tr>
    </thead>
    <tbody>
         <%
    try{
        Class.forName("com.mysql.jdbc.Driver");
       
      
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root","");    
        PreparedStatement pst = conn.prepareStatement("Select * from user where type = 'admin' AND isActive = 1");
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
     <td><button id="<%=rs.getString("user_id")%>" class="btn btn-info">Make Customer</button></td>
     <td><button id="<%=rs.getString("user_id")%>" class="btn btn-danger" onClick='setInactive(this.id)'>X</button></td>
    
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
    <th></th>
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
    <td><%=rs.getString("username")%></td>
    <td><%=rs.getString("password")%></td>
    <td><%=rs.getString("contact")%></td>
    <td><button id="<%=rs.getString("user_id")%>" class="btn btn-primary">Make Admin</button></td>
     <td><button id="<%=rs.getString("user_id")%>" class="btn btn-info">Make Customer</button></td>
     <td><button id="<%=rs.getString("user_id")%>" class="btn btn-danger" onclick="setInactive(this.id)">X</button></td>
    
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
    <th></th>
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
    <td><button id="<%=rs.getString("user_id")%>" class="btn btn-primary">Make Staff</button></td>
    <td><button id="<%=rs.getString("user_id")%>" class="btn btn-info">Make Customer</button></td>
     <td><button id="<%=rs.getString("user_id")%>" class="btn btn-danger">X</button></td>
    
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

<!-- Trigger/Open The Modal -->
<button id="myBtn">Set Type</button>

<!-- The Modal -->
<div id="myModal" class="modal">
    <form  onsubmit="return confirm('Do you really want to submit the form?');" action="setType.jsp">
        <input  type='text' name="id">
        <select name='type'>
            <option>Admin</option>
            <option>Staff</option>
            <option>Customer</option>
        </select>
        <input type="submit">
    </form>
  <!-- Modal content -->
  <div class="modal-content">
            
  </div>

</div>
    </body>
</html>
<script>
    $(document).ready(function(){
                var modal = document.getElementById('myModal');

                var btn = document.getElementById("myBtn");

                var span = document.getElementsByClassName("close")[0];

                btn.onclick = function() {
                  modal.style.display = "block";
                }

                span.onclick = function() {
                  modal.style.display = "none";
                }

                // When the user clicks anywhere outside of the modal, close it
                window.onclick = function(event) {
                  if (event.target == modal) {
                    modal.style.display = "none";
                  }
                }
        });
    
          
</script>

