<%-- 
    Document   : step4
    Created on : 4 Dec, 2018, 7:55:54 PM
    Author     : wabzs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ramen.*"%>
<jsp:include page="headernav.jsp"/>

        <div class="container">    
        <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
            <h1 id="headboi">Add Toppings</h1>
            <form name="orderinfo" id="orderinfo" method="POST" action="checkout.jsp">
                        <label class="topping-checkbox">
                            <input type="checkbox">Noodles
                            <span class="checkmark"></span>
                        </label>
                        
                        <label>
                            <input type="checkbox">Seaweed
                            <span class="checkmark"></span>
                        </label> 
                        
                        <label>
                            <input type="checkbox">Moyashi
                            <span class="checkmark"></span>
                        </label> 
                        
                        <label>
                            <input type="checkbox">Soft Boiled Egg
                            <span class="checkmark"></span>
                        </label> 
                        <br><br>
                <a href="step3.jsp" class="btn btn-light" role="button">Back</a>
                <button class="btn btn-light" type="submit">Next</button>        
            </form>          
        </div>
        </div>
                        
    </body>
</html>