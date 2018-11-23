<%-- 
    Document   : order
    Created on : 11 24, 18, 12:30:24 AM
    Author     : Rafael
--%>

<jsp:include page="headernav.jsp"/>
        <div class="container">    
        <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
         
        <div class="row">
            <div class="col-md-6 col-md-offset-5">
            </div>
            <div class="col-md-8 col-md-offset-5">
                <h1 id="headboi">Select a branch and Ramen </h1>
                    <form name="f1" id="chooseboi" method="get" action="success.jsp">
                        <select name="branch">
                            <option>Consolacion</option>
                            <option>Mandaue</option>   
                            <option>Liloan</option>
                            <option>Banilad</option>
                        </select>
                        
                        <select name="ramen">
                            <option>Tonkatsu Ramen</option>
                            <option>Shoyu Ramen</option>   
                            <option>Shio Ramen</option>
                            
                        </select>
                        <input type="submit" value="Choose"/>
                    </form>
            </div>
        </div>
        </div>
        </div>            
    </body>
</html>
