<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <title>Gaia's plant world</title>
        <meta charset="UTF-8">
        <!--changed charset to utf-8-->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/style/style.css'/>" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/style/book.css'/>" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/style/singleProduct.css'/>">
        <!--added HTML5 shiv-->
        <!--        [if lt IE 9]>-->
        <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/r29/html5.min.js"></script>
        <!--        <![endif]-->
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <script type="text/javascript" src="../js/boxOver.js"></script>
        <!-- JavaScript HTML requirements -->
        <script src="../js/image_swap_library.js"></script>
        <script src="../js/image_swap.js"></script>

        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#tabs").tabs();
            });
        </script>

    </head>

    <body>
        <!--    <div>-->
        <section id="main_container">
            <div id="header">
                <div id="logo"> <a href="../index.jsp"><img src="<c:url value='/image/logo.png'/>" alt="Gaia's plant world" border="0" width="290"/></a> </div>
                <div  class="menu_box" >
                    <ul>
                        <li><a href="../index.jsp" >Home</a></li>
                        <li><a href="../under_const.html" >Email Alert</a></li>
                        <li><a href="../contact.jsp">Contract Us</a></li>
                        <li><a href="../under_const.html">Sign Up</a></li>
                        <li><a href="../under_const.html">Cart</a></li>
                    </ul>
                </div>
            </div>
            <!-- end of logo-->

        </section>
        <div align="right"><input  class="input" type="text" name="search" placeholder="Enter keywords"><input class="searchButton" type="submit" value="Search"></div>


        <nav class="single_product_head">
            <ul class="headlink">            
                <li><a href="<c:url value='/index.jsp'/>">Home</a>
                    <a href="<c:url value='/annuals.jsp'/>">Annuals</a>
                    <a class="current" href="<c:url value='/singleProduct/singlePlant.jsp'/>">plant</a></li>
            </ul>
        </nav>

        <div id="tabs">
            <div class="single_top_info">
                <div class="single_product_img">
                    <div class="single_large_img">
                        <img id="image" src="../image/annual/${plant.productID}.jpg" alt="" width="202">
                    </div>
                    <!--                    <span id="caption"> </span>-->

                    <div class="single_small_image_list">
                        <div class="image_single_list">
                            <a href="../image/annual/200111.jpg" >
                                <img src="../image/annual/${plant.productID}_1.jpg" alt="" width="75">
                            </a>
                        </div>
                        <div class="image_single_list">
                            <a href="../image/books/200211.jpg" >
                                <img src="../image/annual/${plant.productID}_2.jpg" alt="" width="75">
                            </a>
                        </div>
                        <div class="image_single_list">
                            <a href="../image/annual/200311.jpg" >
                                <img src="../image/annual/${plant.productID}_3.jpg" alt="" width="75">
                            </a>
                        </div>
                    </div>
                </div>
                <section class="single_prod_details">
                    <div class="single_product_title">
                        <h4>${plant.plantName}</h4>
                        <p>$${plant.product.price}</p>
                    </div>
                    <form action="<c:url value='/order/addItem'/>" name="cart" class="single_product_page_price" method="POST">
                        <div class="single_product_cart">
                            <div>
                                <input type="image" src="../image/cart.png" alt="submit" width="70">
                                <input type="hidden" name="productCode" value="<c:out value='${plant.productID}'/>">
                            </div>
                            <p>Add to cart</p>
                        </div>
                    </form>
                    <section class="single_overview">
                        <h5>Additional Information</h5>
                        <p>${plant.additionalChar}</p>
                    </section>
                    <!--                    <section class="single_overview">
                                            <h5>PRODUCT OVERVIEW</h5>
                                            <p></p>
                                        </section>-->
                </section>
            </div>
<!--        </div>-->

            <div>
                <ul>
                    <li><a href="#tabs-1">Sun tolerance</a></li>
                    <!--                        <li><a href="#tabs-2">ISBN</a></li>-->
                    <li><a href="#tabs-2">Blossom color</a></li>
                    <li><a href="#tabs-3">Water requirement</a></li>
                    <li><a href="#tabs-4">Hardiness Zone</a></li>
                </ul>
                <div id="tabs-1">
                    <p>${plant.sunTolerance}</p>
                </div>
                <div id="tabs-2">
                    <p>${plant.blossomColor}</p>
                </div>
                <div id="tabs-3">
                    <p>${plant.waterRequirement}</p>
                </div>
                <div id="tabs-4">
                    <p>${plantZone}</p>

                </div>
            </div>
        </div>
        </section>
        
        <!--        <div align = "center">
                    <video id="videoplayer" controls width="800"  poster="../images/sampson_poster.png">
                        <source src="../media/sampson.mp4">
                        <source src="../media/sampson.webm" type='video/webm; codecs="vp8, vorbis"'>
                        <source src="../media/sampson.ogv" type='video/ogg; codecs="theora, vorbis"'>
                        <object type="application/x-shockwave-flash" width="480" height="270">
                            <param name="movie" value="/media/sampson.swf">
                            <param name="wmode" value="transparent">
                            <param name="quality" value="high">
                            [if !IE]>
                            <object type="application/x-shockwave-flash"
                                    data="../media/sampson.swf"
                                    width="480" height="270">
                                <param name="wmode" value="transparent">
                                <param name="quality" value="high">
                            </object>
                            <![endif]
                        </object>        
                    </video>
                </div>-->
        <c:import url="/Include/footer.jsp" />
</body>
<!-- end of center content -->
</html>
