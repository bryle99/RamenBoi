<%-- 
    Document   : validate
    Created on : Nov 24, 2018, 5:18:16 AM
    Author     : JC
--%>
<%@ page import ="java.sql.*" %>

<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        String username = request.getParameter("user");   
        String password = request.getParameter("pass");
      
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root","");    
        PreparedStatement pst = conn.prepareStatement("Select username,password from user where username=? and password=?");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())           
           out.println("Valid login credentials");   
        
        else
           out.println("Invalid login credentials");            
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>