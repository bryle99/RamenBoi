<%-- 
    Document   : userProfile
    Created on : 11 Dec, 2018, 11:11:09 PM
    Author     : wabzs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="headernav.jsp"/>
<%@ page import ="java.sql.*" %>
<%    
    try{
        Class.forName("com.mysql.jdbc.Driver"); 
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root",""); 
        int userID = Integer.parseInt(session.getAttribute("userID").toString());
        
        PreparedStatement pst = conn.prepareStatement("SELECT * FROM user WHERE user_id ="+ userID);

        ResultSet rs = pst.executeQuery();
        if(rs.next()){
            
        }else{
            out.print("Profile is not found");
        }

    }catch(Exception e){       
       out.println("Something went wrong !! Please try again");  
    }
%>
         <div class="container">
            <div class="jumbotron p-2 p-md-4 text-white rounded bg-dark">
                <h1>Profile</h1>
                <h4>Name:</h4><span class="profile-text"></span>
            </div>
         </div>
    </body>
</html>
