
<%@ page import ="java.sql.*" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
    String id =request.getParameter("id");
    
    
       Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root","");    
        PreparedStatement pst = conn.prepareStatement("UPDATE reservation SET isPickedUp = 1, pickUp_dateTime = NOW() WHERE reservation_id = ?");
        
        pst.setString(1, id);
        pst.execute();
        String site = new String("http://localhost:8080/RamenBoi/pendingReservations.jsp");
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location", site); 
%>