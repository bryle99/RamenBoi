

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
        String site = new String("http://localhost:8080/RamenBoi/AdminUserList.jsp");
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location", site); 
%>