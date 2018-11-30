<%-- 
    Document   : home
    Created on : 11 23, 18, 10:59:57 PM
    Author     : bryle
--%>

<jsp:include page="headernav.jsp"/>
<html>
    <head><meta name="viewport" content="width=device-width, initial-scale=1"></head>
<style>
  /* Make the image fully responsive */
  .carousel-inner img {
      width: 100%;
      height: 100%;
  }
  </style>
        <body>
        <div class="container">
            <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
                     <div id="demo" class="carousel slide" data-ride="carousel">
                         <ul class="carousel-indicators">
                           <li data-target="#demo" data-slide-to="0" class="active"></li>
                           <li data-target="#demo" data-slide-to="1"></li>
                           <li data-target="#demo" data-slide-to="2"></li>
                           <li data-target="#demo" data-slide-to="3"></li>
                         </ul>
                         <div class="carousel-inner">
                           <div class="carousel-item active">
                             <img src="assets/img/miso_ramen.jpg" alt="Miso" width="1100" height="500">
                             <div class="carousel-caption">
                               <h3>Miso</h3>
                               <p></p>
                             </div>   
                           </div>
                           <div class="carousel-item">
                             <img src="assets/img/shio_ramen.jpg" alt="Shio" width="1100" height="500">
                             <div class="carousel-caption">
                               <h3>Chicago</h3>
                               <p>Thank you, Chicago!</p>
                             </div>   
                           </div>
                           <div class="carousel-item">
                             <img src="assets/img/shoyu_ramen.jpg" alt="Shoyu" width="1100" height="500">
                             <div class="carousel-caption">
                               <h3>New York</h3>
                               <p>We love the Big Apple!</p>
                             </div>   
                           </div>
                           <div class="carousel-item">
                             <img src="assets/img/tonkotsu_ramen.jpg" alt="Tonkotsu" width="1100" height="500">
                             <div class="carousel-caption">
                               <h3>Chicago</h3>
                               <p>Thank you, Chicago!</p>
                             </div>   
                           </div>
                         </div>
                         <a class="carousel-control-prev" href="#demo" data-slide="prev">
                           <span class="carousel-control-prev-icon"></span>
                         </a>
                         <a class="carousel-control-next" href="#demo" data-slide="next">
                           <span class="carousel-control-next-icon"></span>
                         </a>
                       </div>

              </div>
            </div>
        </body>
</html>

<script>
$(document).ready(function(){
    // Activate Carousel
    $("#myCarousel").carousel();
    
    // Enable Carousel Indicators
    $(".item1").click(function(){
        $("#myCarousel").carousel(0);
    });
    $(".item2").click(function(){
        $("#myCarousel").carousel(1);
    });
    $(".item3").click(function(){
        $("#myCarousel").carousel(2);
    });
    $(".item4").click(function(){
        $("#myCarousel").carousel(3);
    });
    
    // Enable Carousel Controls
    $(".left").click(function(){
        $("#myCarousel").carousel("prev");
    });
    $(".right").click(function(){
        $("#myCarousel").carousel("next");
    });
});
</script>
