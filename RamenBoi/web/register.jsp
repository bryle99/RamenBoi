

<%@ page import ="java.sql.*" %>

<%
     try{
        Class.forName("com.mysql.jdbc.Driver");
        String user_email = request.getParameter("email");   
        String user_fname = request.getParameter("fname");
        String user_lname = request.getParameter("lname");
        String user_password = request.getParameter("password");
      
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root","");    
        PreparedStatement pst = conn.prepareStatement("INSERT INTO user(first_name, last_name, password, email) VALUES (?,?,?,?)");
        pst.setString(1, user_fname);
        pst.setString(2, user_lname);
        pst.setString(3, user_password);
        pst.setString(4, user_email);
        pst.executeUpdate();                        
         
        String site = new String("http://localhost:8080/RamenBoi/login.jsp");
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location", site); 
           
       
     }catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>