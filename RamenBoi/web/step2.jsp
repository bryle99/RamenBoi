<%-- 
    Document   : step2
    Created on : 4 Dec, 2018, 7:02:51 PM
    Author     : wabzs
--%>

<%@page import="ramen.*"%>
<jsp:include page="headernav.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <div class="container">    
        <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
            <h1 id="headboi">Select Ramen Base</h1>
            <form name="orderinfo" id="orderinfo" method="POST" action="step3.jsp">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="branch" id="Cordova" value="option1" checked>
                    <label class="form-check-label" for="exampleRadios1">
                       <% tonkotsu t = new tonkotsu(); out.print(t.getDesc());%>
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="branch" id="Mandaue" value="option2">
                    <label class="form-check-label" for="exampleRadios2">
                      <% shoyu sh = new shoyu(); out.print(sh.getDesc());%> 
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="branch" id="Consolacion" value="option3">
                    <label class="form-check-label" for="exampleRadios3">
                      <% shio s = new shio(); out.print(s.getDesc());%>
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="branch" id="Consolacion" value="option3">
                    <label class="form-check-label" for="exampleRadios3">
                      <% miso m = new miso(); out.print(m.getDesc());%>
                    </label>
                  </div>                    
                <a href="order.jsp" class="btn btn-light" role="button">Back</a>
                <button class="btn btn-light" type="submit">Next</button>
            </form>          
        </div>
        </div>
                        
    </body>
</html>
