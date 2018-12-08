<%-- 
    Document   : order
    Created on : 11 24, 18, 12:30:24 AM
    Author     : Rafael
--%>

<%@page import="ramen.*"%>

<jsp:include page="headernav.jsp"/>

        <div class="container">    
        <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
        <h1 id="headboi">Select a branch</h1>
            <form name="orderinfo" id="orderinfo" method="POST" action="order_step2.jsp">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="branch" id="Cordova" value="Cordova" checked>
                    <label class="form-check-label" for="exampleRadios1">
                       Cordova
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="branch" id="Mandaue" value="Mandaue">
                    <label class="form-check-label" for="exampleRadios2">
                      Mandaue
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="branch" id="Consolacion" value="Consolacion">
                    <label class="form-check-label" for="exampleRadios3">
                      Consolacion
                    </label>
                  </div>
                <!--<button class="btn btn-light m-2" type="submit">Next</button>
            </form>-->
            <h1 id="headboi">Select Ramen Base</h1>
            <!--
            <form name="orderinfo" id="orderinfo" method="POST" action="order_step3.jsp">
            -->
                <div class="custom-control custom-radio">
                    <input class="custom-control-input" type="radio" name="ramenbase" id="tonkotsu" value="tonkotsu" checked>
                    <label class="custom-control-label" for="tonkotsu">
                       <% tonkotsu t = new tonkotsu(); out.print(t.getDescription());%>
                    </label>
                  </div>
                  <div class="custom-control custom-radio">
                    <input class="custom-control-input" type="radio" name="ramenbase" id="shoyu" value="shoyu">
                    <label class="custom-control-label" for="shoyu">
                      <% shoyu sh = new shoyu(); out.print(sh.getDescription());%> 
                    </label>
                  </div>
                  <div class="custom-control custom-radio">
                    <input class="custom-control-input" type="radio" name="ramenbase" id="shio" value="shio">
                    <label class="custom-control-label" for="shio">
                      <% shio s = new shio(); out.print(s.getDescription());%>
                    </label>
                  </div>
                  <div class="custom-control custom-radio">
                    <input class="custom-control-input" type="radio" name="ramenbase" id="miso" value="miso">
                    <label class="custom-control-label" for="exampleRadios3">
                      <% miso m = new miso(); out.print(m.getDescription());%>
                    </label>
                  </div>
                <!--  
                <a href="order.jsp" class="btn btn-light m-1" role="button">Back</a>
                <button class="btn btn-light m-1" type="submit">Next</button>
                -->
            </form>
        </div>
        </div>
  
    </body>
</html>
