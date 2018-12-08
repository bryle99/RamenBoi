<%-- 
    Document   : step3
    Created on : 4 Dec, 2018, 7:41:34 PM
    Author     : wabzs
--%>

<%@page import="ramen.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ramen.*"%>
<jsp:include page="headernav.jsp"/>       
        <% 
            String ramenbase = "";
            ramenBase ramen = null;
            /*
            if (true) {
                out.print("topkek");
                ramenbase = request.getParameter("ramenbase");
                if(ramenbase.equals("tonkotsu")){
                    ramen = new tonkotsu();
                }else if(ramenbase.equals("shoyu")){
                    ramen = new shoyu();
                }else if(ramenbase.equals("shio")){
                    ramen = new shio();
                }else if(ramenbase.equals("miso")){
                    ramen = new miso();
                }
                session.setAttribute("ramen", ramen);
            }
            
            //ramen = session.getAttribute("ramen").getClass();
            
            
            switch(ramenbase){
                case "tonkotsu":  ramen = new tonkotsu();
                        break;
                case "shoyu":  ramen = new shoyu();
                        break;  
                case "shio":  ramen = new shio();
                        break;
                case "miso":  ramen = new miso();
                        break;        
            }*/
            
        %>

        <div class="container">    
        <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
            <h1 id="headboi">Ramen Preference : : 
            <% if(ramen != null){ 
                        out.print(ramen.getDescription()); 
                }else{ 
                        out.print("ramen is null");
                }
            %>
            </h1>
            <form name="orderinfo" id="orderinfo" method="POST" action="order_step4.jsp">
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
                <a href="order_step2.jsp" class="btn btn-light m-1" role="button">Back</a>
                <button class="btn btn-light m-1" type="submit">Next</button>        
            </form>          
        </div>
        </div>
                        
    </body>
</html>