<%-- 
    Document   : userProfile
    Created on : 11 Dec, 2018, 11:11:09 PM
    Author     : wabzs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="headernav.jsp"/>
<%@ page import ="java.sql.*" %>

         <div class="container">
            <div class="jumbotron p-2 p-md-4 text-white rounded bg-dark">
                <h1>Profile</h1>
                <hr style="border-color:white;">
                <%    
                    try{
                        Class.forName("com.mysql.jdbc.Driver"); 
                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root",""); 
                        int userID = Integer.parseInt(session.getAttribute("userID").toString());

                        PreparedStatement pst = conn.prepareStatement("SELECT * FROM user WHERE user_id ="+ userID);

                        ResultSet rs = pst.executeQuery();
                        if(rs.next()){
                %> 
                  <div class="form-group row">
                    <label for="fname" class="col-md-2 col-form-label profile-headers">First Name:</label>
                    <div class="col-md-2">
                      <input type="text" readonly class="form-control profile-text" id="fname" value="<%= rs.getString("first_name") %>">
                    </div>
                    <label for="lname" class="col-md-2 col-form-label profile-headers">Last Name:</label>
                    <div class="col-md-2">
                      <input type="text" readonly class="form-control profile-text" id="lname" value="<%= rs.getString("last_name") %>">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="email" class="col-md-2 col-form-label profile-headers">Email:</label>
                    <div class="col-md-4">
                      <input type="email" readonly class="form-control profile-text" id="email" value="<%= rs.getString("email") %>">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="contact" class="col-md-2 col-form-label profile-headers">Contact Number:</label>
                    <div class="col-md-4">
                      <input type="text" readonly class="form-control profile-text" id="contact" value="<%= rs.getString("contact") %>">
                    </div>
                  </div>
                  <button class="btn btnramen" data-toggle="modal" data-target="#passwordmodal">Change Password</button>
                  
                  <!-- Modal -->
                    <div class="modal fade" id="passwordmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content ramen-bg">
                          <div class="modal-header">
                            <h5 class="modal-title modal-text" id="exampleModalLabel">Change Password</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                            <form method="POST" action="changePassword.jsp" class="has-validation-callback modal-text">
                                       <div class="form-group">
                                         <label for="exampleInputPassword1">Current Password</label>
                                         <input hidden name="email" value="<%= rs.getString("email") %>">
                                         <input hidden name="user_id" value="<%= rs.getInt("user_id") %>">
                                         <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Current Password">
                                       </div>
                                       <div class="form-group">
                                         <label for="exampleInputPassword1">New Password</label>
                                         <input type="password" class="form-control" id="exampleInputPassword1" placeholder="New Password" name="newpassword" data-validation="length" data-validation-length="min8">
                                       </div>
                                       <div class="form-group">
                                         <label for="exampleInputPassword1">Retype Password</label>
                                         <input type="password" class="form-control" id="exampleInputPassword1" placeholder="New Password" name="pass" data-validation="confirmation" data-validation-confirm="newpass">
                                       </div>
                           
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-dark" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btnramenmaroon">Save changes</button>
                          </div>
                           </form> 
                        </div>
                      </div>
                    </div>
                    <br><br> 
                    <h2>Recent Reservations</h2>   
                    <table class="table">
                        <thead>
                          <tr>
                            <th scope="col">Reservation ID</th>
                            <th scope="col">Branch</th>
                            <th scope="col">Reservation Date & Time</th>
                            <th scope="col">Ramen</th> 
                            <th scope="col">Status</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                          </tr>
                          <tr>
                            <th scope="row">2</th>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                          </tr>
                          <tr>
                            <th scope="row">3</th>
                            <td>Larry</td>
                            <td>the Bird</td>
                            <td>@twitter</td>
                          </tr>
                        </tbody>
                    </table>
                <%
                        }else{
                                out.print("Profile is not found");
                            }
                }catch(Exception e){       
                       out.println("Something went wrong !! Please try again");  
                    }
                %>   
            </div>
         </div>
    </body>
</html>
<script>
    <%
        if(session.getAttribute("invalidPassword") != null && session.getAttribute("invalidPassword").equals(1)){
            out.println("alert('Invalid Password!')");
            session.setAttribute("invalidPassword",0);
        }
        if(session.getAttribute("changePasswordSuccess") != null && session.getAttribute("changePasswordSuccess").equals(1)){
            out.println("alert('Password Successfully Changed!')");
            session.setAttribute("changePasswordSuccess",0);
        }
    %>
</script>