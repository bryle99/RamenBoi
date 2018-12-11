<%-- 
    Document   : order
    Created on : 11 24, 18, 12:30:24 AM
    Author     : Rafael
--%>

<%@page import="ramen.*"%>

<jsp:include page="headernav.jsp"/>
<%@ page import ="java.sql.*" %>
            
            <!--Start of Multistep Form-->
            <div class="container">
                <div class="jumbotron p-3 p-md-4 text-white rounded bg-dark">
                <form id="regForm" name="orderinfo" id="orderinfo" method="POST" action="checkout.jsp">
                    

                    <!-- One "tab" for each step in the form: -->
                    <div class="tab">
                       <h1>Choose a Branch</h1>
                       <div class="form-check">
                           
                                 <%
                                     try{
                                        Class.forName("com.mysql.jdbc.Driver"); 
                                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ramenboi","root",""); 
                                        
                                        PreparedStatement pst = conn.prepareStatement("SELECT branch_id, branch_location FROM branch");
                                        ResultSet rs = pst.executeQuery(); 

                                        while(rs.next()){
                                            int branch_id;
                                            String branch_location;

                                            branch_id = rs.getInt("branch_id");
                                            branch_location = rs.getString("branch_location");
                                 %>
                                 <input class="form-check-input" type="radio" name="branch" id="<%= branch_location %>" value=<%= branch_id%> checked>
                                    <label class="form-check-label" for="<%= branch_location %>">
                                        <%= branch_location %>
                                    </label>
                                    </br>
                                 <%
                                        }

                                    }catch(Exception e){
                                        out.println("Something went wrong !! Please try again");  
                                    }
                                     
                                 %>
                        </div>
                    </div>

                    <div class="tab">
                        <h1>Choose a Ramen Base</h1>
                        <div>
                                <div class="form-check">
                                   <input class="form-check-input" type="radio" name="ramenBase" id="tonkotsu" value="tonkotsu" checked>
                                       <label class="form-check-label" for="tonkotsu">
                                           <% tonkotsu t = new tonkotsu(); out.print(t.getDescription());%>  |  Price: <% out.print(t.getPrice());%>
                                       </label>
                                   </br>
                                   <input class="form-check-input" type="radio" name="ramenBase" id="shoyu" value="shoyu">
                                       <label class="form-check-label" for="shoyu">
                                           <% shoyu sh = new shoyu(); out.print(sh.getDescription());%>  |  Price: <% out.print(sh.getPrice());%> 
                                       </label>
                                   </br>
                                   <input class="form-check-input" type="radio" name="ramenBase" id="shio" value="shio">
                                       <label class="form-check-label" for="shio">
                                           <% shio s = new shio(); out.print(s.getDescription());%>  |  Price: <% out.print(s.getPrice());%> 
                                       </label>
                                   </br>
                                   <input class="form-check-input" type="radio" name="ramenBase" id="miso" value="miso">
                                       <label class="form-check-label" for="miso">
                                           <% miso m = new miso(); out.print(m.getDescription());%>  |  Price: <% out.print(m.getPrice());%> 
                                       </label>
                                </div>
                             </div>
                    </div>

                    <div class="tab">
                        <h1>Ramen Preference</h1>
                         <div class="row mb-2">
                                <div class="col-md-2">
                                    <h4>Garlic</h4>    
                                       <select name="garlic"> 
                                           <option>0</option>
                                           <option>1</option>
                                           <option>2</option>
                                       </select>
                                </div>
                                <div class="col-md-">
                                    <h4>Scallions</h4>
                                    <div class="form-check-inline">            
                                           <label class="form-check-label" for="scallionYES">
                                               <input class="form-check-input" type="radio" name="scallions" id="scallionYes" value="yes">Yes
                                           </label>            
                                    </div>
                                    <div class="form-check-inline">
                                           <label class="form-check-label" for="scallionNO">
                                                       <input class="form-check-input" type="radio" name="scallions" id="scallionNo" value="no" checked>No
                                           </label>
                                     </div>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-md-2">
                                    <h4>Spiciness</h4>
                                        <select name="spiciness">
                                            <option>None</option>
                                            <option>Mild</option>
                                            <option>Medium</option>
                                            <option>Hot</option>
                                            <option>Very Hot</option>
                                        </select><br><br>

                               </div>
                               <div class="col-md-2">
                                    <h4>Richness</h4>               
                                        <select name="richness">
                                            <option>Light</option>
                                            <option>Medium</option>
                                            <option>Rich</option>
                                            <option>Very Rich</option>
                                        </select>
                               </div>
                               <div class="col-md-3">
                                    <h4>Noodle Firmness</h4>               
                                        <select name="noodle_firmness">
                                            <option>Extra Soft</option>
                                            <option>Soft</option>
                                            <option>Medium</option>
                                            <option>Firm</option>
                                            <option>Extra Firm</option>
                                        </select>
                               </div>
                            </div>
                    </div>

                    <div class="tab">
                      <h1>Add Toppings</h1>  
                      <div class="form-check-inline"><% ramenBase sample = new ramenBase();%>
                                    <label class="form-check-label">
                                        <input type="number" name="noodlesqty" style="width: 35px" value=0 min=0 max=5 oninput="validity.valid||(value='');" id="noodlesqty" hidden>
                                        <input type="checkbox" class="form-check-input" name= "topping" value="noodles" id="noodles"><% noodles n = new noodles(sample); out.print(n.getDescription());%>  |  Price: <% out.print(n.getPrice());%> 
                                    </label>
                                    <label class="form-check-label" style="margin-left: 50px;">
                                        <input type="number" name="seaweedqty" style="width: 35px" value=0 min=0 max=5 oninput="validity.valid||(value='');" id="seaweedqty" hidden>
                                        <input type="checkbox" class="form-check-input" name="topping" value="seaweed" id="seaweed"><% seaweed se = new seaweed(sample); out.print(se.getDescription());%>  |  Price: <% out.print(se.getPrice());%>
                                    </label>
                                    <label class="form-check-label" style="margin-left: 50px;">
                                        <input type="number" name="moyashiqty" style="width: 35px" value=0 min=0 max=5 oninput="validity.valid||(value='');" id="moyashiqty" hidden>
                                        <input type="checkbox" class="form-check-input" name="topping" value="moyashi" id="moyashi"><% moyashi mo = new moyashi(sample); out.print(mo.getDescription());%>  |  Price: <% out.print(mo.getPrice());%> 
                                    </label>
                                    <label class="form-check-label" style="margin-left: 50px;">
                                        <input type="number" name="eggqty" style="width: 35px" value=0 min=0 max=5 oninput="validity.valid||(value='');" id="eggqty" hidden>
                                        <input type="checkbox" class="form-check-input" name="topping" value="egg" id="egg"><% egg eg = new egg(sample); out.print(eg.getDescription());%>  |  Price: <% out.print(eg.getPrice());%> 
                                    </label>
                        </div><br>
                    </div>

                    <div style="overflow:auto;">
                      <div style="float:right;">
                        <button type="button" id="prevBtn" onclick="nextPrev(-1)" class="btn btnramen">Previous</button>
                        <button type="button" id="nextBtn" onclick="nextPrev(1)" class="btn btnramen">Next</button>
                      </div>
                    </div>

                    <!-- Circles which indicates the steps of the form: -->
                    <div style="text-align:center;margin-top:40px;">
                      <span class="step"></span>
                      <span class="step"></span>
                      <span class="step"></span>
                      <span class="step"></span>
                    </div>

                </form>
                </div>
            </div>
        </body>
</html>

<script>
    $(document).ready(function(){
        $('[data-toggle="popover"]').popover();
    });
    
    $("#noodles").change(function() {
        if(this.checked) {
            $('#noodlesqty').removeAttr('hidden');
            $('#noodlesqty').val(1);
        }else{
            $('#noodlesqty').attr('hidden', true);
            $('#noodlesqty').val(0);
        }
    });
    
    $("#seaweed").change(function() {
        if(this.checked) {
            $('#seaweedqty').removeAttr('hidden');
            $('#seaweedqty').val(1);
        }else{
            $('#seaweedqty').attr('hidden', true);
            $('#seaweedqty').val(0);
        }
    });
    
    $("#moyashi").change(function() {
        if(this.checked) {
            $('#moyashiqty').removeAttr('hidden');
            $('#moyashiqty').val(1);
        }else{
            $('#moyashiqty').attr('hidden', true);
            $('#moyashiqty').val(0);
        }
    });
    
    $("#egg").change(function() {
        if(this.checked) {
            $('#eggqty').removeAttr('hidden');
            $('#eggqty').val(1);
        }else{
            $('#eggqty').attr('hidden', true);
            $('#eggqty').val(0);
        }
    });
    
    var currentTab = 0; // Current tab is set to be the first tab (0)
    showTab(currentTab); // Display the current tab

    function showTab(n) {
      // This function will display the specified tab of the form ...
      var x = document.getElementsByClassName("tab");
      x[n].style.display = "block";
      // ... and fix the Previous/Next buttons:
      if (n == 0) {
        document.getElementById("prevBtn").style.display = "none";
      } else {
        document.getElementById("prevBtn").style.display = "inline";
      }
      if (n == (x.length - 1)) {
        document.getElementById("nextBtn").innerHTML = "Proceed to Confirmation";
      } else {
        document.getElementById("nextBtn").innerHTML = "Next";
      }
      // ... and run a function that displays the correct step indicator:
      fixStepIndicator(n)
    }

    function nextPrev(n) {
      // This function will figure out which tab to display
      var x = document.getElementsByClassName("tab");
      // Hide the current tab:
      x[currentTab].style.display = "none";
      // Increase or decrease the current tab by 1:
      currentTab = currentTab + n;
      // if you have reached the end of the form... :
      if (currentTab >= x.length) {
        //...the form gets submitted:
        document.getElementById("regForm").submit();
        return false;
      }
      // Otherwise, display the correct tab:
      showTab(currentTab);
    }



    function fixStepIndicator(n) {
      // This function removes the "active" class of all steps...
      var i, x = document.getElementsByClassName("step");
      for (i = 0; i < x.length; i++) {
        x[i].className = x[i].className.replace(" active", "");
      }
      //... and adds the "active" class to the current step:
      x[n].className += " active";
  }
</script>
</html>
