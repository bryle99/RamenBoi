<%-- 
    Document   : home
    Created on : 11 23, 18, 10:59:57 PM
    Author     : bryle
--%>

<jsp:include page="headernav.jsp"/>
<html>
    <head><meta name="viewport" content="width=device-width, initial-scale=1"></head>
<style>
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
                             <div class="carousel-item active"></a>
                                <img src="assets/img/miso_ramenNEW.png" alt="Miso" style="margin-left: .8em;"></img></a>
                             <div class="carousel-caption">
                               <h3>Miso Ramen</h3>
                               <p>It consists of Chinese-style wheat noodles served in a meat or (occasionally) fish-based broth, often flavored with soy sauce or miso.</p>
                             </div>   
                           </div>
                           <div class="carousel-item">
                             <img src="assets/img/shio_ramenNEW.png" alt="Shio" style="margin-left: 1.5em;">
                             <div class="carousel-caption">
                               <h3>Shio Ramen</h3>
                               <p>Shio means "salt" in Japanese, and indeed, the clear broth has an appealing sea-salt flavor.</p>
                             </div>   
                           </div>
                           <div class="carousel-item">
                             <img src="assets/img/shoyu_ramenNEW.png" alt="Shoyu" style="margin-left: 1em;">
                             <div class="carousel-caption">
                                 <h3>Shoyu Ramen</h3>
                               <p>Is a type of ramen that has very curly noodles and tangy, salty and savory, but light broth.</p>
                             </div>   
                           </div>
                           <div class="carousel-item">
                             <img src="assets/img/tonkotsu_ramenNEW.png" alt="Tonkotsu" style="margin-left: 1em;">
                             <div class="carousel-caption">
                                 <h3>Tonkotsu Ramen</h3>
                                 <p>The soup broth is prepared by boiling pork bones in water for a significant amount of time, up to eight hours, and the broth is typically cloudy in appearance.</p>
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
        $('[data-toggle="popover"]').popover();
    });
</script>
