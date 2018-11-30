<%-- 
    Document   : home
    Created on : 11 23, 18, 10:59:57 PM
    Author     : bryle
--%>

<jsp:include page="headernav.jsp"/>
<html>
<style>
.mySlides {display:none;}
</style>
        <body>
        <div class="container">
            <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
                <div class="w3-content w3-display-container">
                        <img class="mySlides" src="assets/img/miso_ramen.jpg" style="width:100%">
                        <img class="mySlides" src="assets/img/shoyu_ramen.jpg" style="width:100%">
                        <img class="mySlides" src="assets/img/shio_ramen.jpg" style="width:100%">
                        <img class="mySlides" src="assets/img/tonkotsu_ramen.jpg" style="width:100%">

                        <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
                        <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
                       </div>
                   </div>
                </div>
        </body>
</html>

<script>
   var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>
