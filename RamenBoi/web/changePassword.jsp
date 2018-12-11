<%-- 
    Document   : changePassword
    Created on : 12 Dec, 2018, 1:26:45 AM
    Author     : wabzs
--%>
<%@ page import ="java.sql.*" %>

<%

        Class.forName("com.mysql.jdbc.Driver");
        String email = request.getParameter("email");   
        String password = request.getParameter("password");
        String newpassword = request.getParameter("newpassword");
        String user_id = request.getParameter("user_id");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root","");    
        PreparedStatement pst = conn.prepareStatement("Select * from user where email=? and password=?");
        pst.setString(1, email);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();  
        
        if(rs.next()){   
           pst = conn.prepareStatement("UPDATE user SET password='"+ newpassword +"'WHERE user_id="+ Integer.parseInt(user_id) +";");           
           int i = pst.executeUpdate();
           if(i != 0){
               session.setAttribute("changePasswordSuccess", 1);
           }
            String site = new String("http://localhost:8080/RamenBoi/userProfile.jsp");
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", site); 
        }else{
            session.setAttribute("invalidPassword",1); 
            String site = new String("http://localhost:8080/RamenBoi/userProfile.jsp");
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", site); 
        }
    
%>
