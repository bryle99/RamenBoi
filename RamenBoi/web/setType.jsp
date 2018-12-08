

<%@ page import ="java.sql.*" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
    String id =request.getParameter("id");
    String type = request.getParameter("type");
    
       Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root","");    
        PreparedStatement pst = conn.prepareStatement("UPDATE user SET type = ? WHERE user_id = ?");
        pst.setString(1, type);
        pst.setString(2, id);
        pst.execute();
        

%>