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
        PreparedStatement pst = conn.prepareStatement("Select * from user where email=? and password=?");
        pst.setString(1, email);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next()){   
            if(rs.getBoolean("isActive")){
            String type = rs.getString("type");
            String userFname = rs.getString("first_name");
            int userID = rs.getInt("user_id");
            session.setAttribute("userType",type);
            session.setAttribute("userFname", userFname);
            session.setAttribute("userID",userID);
            
            String site = new String("http://localhost:8080/RamenBoi/home.jsp");
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", site); 
            }else{
            session.setAttribute("Inactive",1); 
            String site = new String("http://localhost:8080/RamenBoi/login.jsp");
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", site); 
            }  
            
        }else{
            session.setAttribute("invalidLogin",1); 
            String site = new String("http://localhost:8080/RamenBoi/login.jsp");
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", site); 
        }
    }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>