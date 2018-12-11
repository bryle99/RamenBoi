<%@ page import ="java.sql.*" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
    String id =request.getParameter("id");
    String isActive = request.getParameter("isActive");
    String insert;
        if(isActive.equals("Active")){
            insert = "1";
        }else{
            insert = "0";
        }
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root","");    
        PreparedStatement pst = conn.prepareStatement("UPDATE user SET isActive = ? WHERE user_id = ?");
        pst.setString(1, insert);
        pst.setString(2, id);
        pst.execute();
        String site = new String("http://localhost:8080/RamenBoi/AdminUserList.jsp");
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location", site); 
%>