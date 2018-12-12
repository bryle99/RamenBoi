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

                        PreparedStatement pst = conn.prepareStatement("SELECT *, branch_location FROM user AS u JOIN reservation AS r ON u.user_id = r.user_id JOIN branch AS b ON r.branch_id = b.branch_id WHERE u.user_id ="+ userID);
                        
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
                                         <input type="password" class="form-control" id="exampleInputPassword1" placeholder="New Password" name="pass" data-validation="confirmation" data-validation-confirm="newpassword">
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
                            <th scope="col">Ramen Info</th> 
                            <th scope="col">Status</th>
                          </tr>
                        </thead>
                        <tbody>
                          <%
                              do{
                          %>
                          <tr>
                            <th scope="row"><%= rs.getInt("reservation_id")%></th>
                            <td><%= rs.getString("branch_location") %></td>
                            <td><%= rs.getString("reservation_dateTime") %></td>
                            <td><button class="btn btnramen" data-toggle="modal" data-target="#<%= rs.getInt("reservation_id")%>ramen">Show Ramen Info</button></td>
                            <td><button class="btn btnramen" data-toggle="modal" data-target="#<%= rs.getInt("reservation_id")%>status">Show Reservation Status</button></td>
                          </tr>
                                <!-- Modal Ramen INFO-->
                         <div class="modal fade" id="<%= rs.getInt("reservation_id")%>ramen" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                           <div class="modal-dialog" role="document">
                             <div class="modal-content ramen-bg">
                               <div class="modal-header">
                                 <h5 class="modal-title modal-text" id="exampleModalLabel">Ramen Information</h5>
                                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                   <span aria-hidden="true">&times;</span>
                                 </button>
                               </div>
                               <div class="modal-body">
                                   <span class="profile-headers modal-text">Ramen Base: </span> <span class="profile-text modal-text"><%= rs.getString("ramen_base") %></span><br><br>
                                   <span class="profile-headers modal-text">Ramen Preference: </span> <span class="profile-text modal-text"><%= rs.getString("ramen_preference") %></span><br><br>
                                   <span class="profile-headers modal-text">Ramen Toppings: </span> <span class="profile-text modal-text"><%= rs.getString("ramen_toppings") %></span><br><br>
                                   <span class="profile-headers modal-text">Total Price: </span> <span class="profile-text modal-text"><%= rs.getFloat("total_price") %></span>
                               </div>
                             </div>
                           </div>
                         </div>
                        
                               <!-- Modal Reservation Status-->
                         <div class="modal fade" id="<%= rs.getInt("reservation_id")%>status" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                           <div class="modal-dialog" role="document">
                             <div class="modal-content ramen-bg">
                               <div class="modal-header">
                                 <h5 class="modal-title modal-text" id="exampleModalLabel">Reservation Status</h5>
                                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                   <span aria-hidden="true">&times;</span>
                                 </button>
                               </div>
                               <div class="modal-body">
                                   <span class="profile-headers modal-text">Status: </span> 
                                   <span class="profile-text modal-text">
                                   <%
                                       if(rs.getInt("isPickedUp") == 0){
                                           out.print("Not Picked Up");
                                   %>
                                   </span><br><br>
                                   <%
                                       }else{
                                           out.print("Picked up");
                                           
                                   %>
                                   </span><br><br>
                                   <span class="profile-headers modal-text">Pick Up Date & Time: </span> <span class="profile-text modal-text"> <%= rs.getString("pickUp_dateTime") %></span><br><br>
                                   <%
                                       }
                                   %>

                               </div>
                             </div>
                           </div>
                         </div>
                               
                          <%       
                              }while(rs.next()); 
                              
                          %>
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
     $(document).ready(function(){
        $.validate({
           modules : 'security'
         });
      });
</script>