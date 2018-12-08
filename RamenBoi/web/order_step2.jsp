<%-- 
    Document   : step2
    Created on : 4 Dec, 2018, 7:02:51 PM
    Author     : wabzs
--%>

<%@page import="ramen.*"%>
<jsp:include page="headernav.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%
            if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("submit") != null) {
                session.setAttribute("branch", request.getParameter("branch"));
            }
            session.setAttribute("branch", request.getParameter("branch"));
            
            out.print(session.getAttribute("branch"));
        %>


        <div class="container">    
        <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
            <h1 id="headboi">Select Ramen Base</h1>
            <form name="orderinfo" id="orderinfo" method="POST" action="order_step3.jsp">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="ramenbase" id="tonkotsu" value="tonkotsu" checked>
                    <label class="form-check-label" for="exampleRadios1">
                       <% tonkotsu t = new tonkotsu(); out.print(t.getDescription());%>
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="ramenbase" id="shoyu" value="shoyu">
                    <label class="form-check-label" for="exampleRadios2">
                      <% shoyu sh = new shoyu(); out.print(sh.getDescription());%> 
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="ramenbase" id="shio" value="shio">
                    <label class="form-check-label" for="exampleRadios3">
                      <% shio s = new shio(); out.print(s.getDescription());%>
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="ramenbase" id="miso" value="miso">
                    <label class="form-check-label" for="exampleRadios3">
                      <% miso m = new miso(); out.print(m.getDescription());%>
                    </label>
                  </div>                    
                <a href="order.jsp" class="btn btn-light m-1" role="button">Back</a>
                <button class="btn btn-light m-1" type="submit">Next</button>
            </form>          
        </div>
        </div>
                        
    </body>
</html>
