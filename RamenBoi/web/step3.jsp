<%-- 
    Document   : step3
    Created on : 4 Dec, 2018, 7:41:34 PM
    Author     : wabzs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ramen.*"%>
<jsp:include page="headernav.jsp"/>

        <div class="container">    
        <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
            <h1 id="headboi">Ramen Preference</h1>
            <form name="orderinfo" id="orderinfo" method="POST" action="step4.jsp">
                <h4>Garlic Cloves</h4>
                        <select name="garlic"> 
                            <option>0</option>
                            <option>1/2</option>
                            <option>1</option>
                            <option>2</option>
                        </select><br><br>
                <h4>Scallions</h4>                                   
                        <select name="scallions">
                            <option>yes</option>
                            <option>no</option>
                        </select><br><br>
                        
                        <select name="spiceness">
                            <option>No Spice</option>
                            <option>Mild</option>
                            <option>Medium</option>
                            <option>Hot</option>
                            <option>Very Hot</option>
                        </select><br><br>         
                <h4>Richness</h4>               
                        <select name="richness">
                            <option>Light</option>
                            <option>Medium</option>
                            <option>Rich</option>
                            <option>Very Rich</option>
                        </select><br><br>            
                <h4>Noodle Firmness</h4>               
                        <select name="noodle-firmness">
                            <option>Extra Soft</option>
                            <option>Soft</option>
                            <option>Medium</option>
                            <option>Firm</option>
                            <option>Extra Firm</option>
                        </select><br><br> 
                <a href="step2.jsp" class="btn btn-light" role="button">Back</a>
                <button class="btn btn-light" type="submit">Next</button>        
            </form>          
        </div>
        </div>
                        
    </body>
</html>