<%-- 
    Document   : validate
    Created on : Nov 24, 2018, 5:18:16 AM
    Author     : JC
--%>
<%@ page import ="java.sql.*" %>

<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        String email = request.getParameter("email");   
        String password = request.getParameter("pass");
      
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root","");    
        PreparedStatement pst = conn.prepareStatement("Select email,password from user where email=? and password=?");
        pst.setString(1, email);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next()){           
            String site = new String("http://localhost:8080/RamenBoi/home.jsp");
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", site); 
        }else{
           String site = new String("http://localhost:8080/RamenBoi/login.jsp");
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", site); 
   }
    }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>