<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <title>Gaia's plant world</title>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/style/style.css'/>" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/style/book.css'/>" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/style/singleProduct.css'/>">
        <!--added HTML5 shiv-->
<!--        [if lt IE 9]>-->
        <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/r29/html5.min.js"></script>
<!--        <![endif]-->
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <script type="text/javascript" src="<c:url value='/js/boxOver.js'/>"></script>
        <!-- JavaScript HTML requirements -->
        <script src="<c:url value='/js/image_swap_library.js'/>"></script>
        <script src="<c:url value='/js/image_swap.js'/>"></script>

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
                <li><a href="<c:url value='/index.jsp'/>">Home:</a>
                    <a href="<c:url value='/books.jsp'/>">Books:</a>
                    <a class="current" href="<c:url value='/singleProduct/singleBook.jsp'/>">The Vegetable Gardener's Bible</a></li>
            </ul>
        </nav>

        <div id="tabs">
            <div class="single_top_info">
                <div class="single_product_img">
                    <div class="single_large_img">
                        <img id="image" src="../image/books/s${book.productID}.jpg" alt="" width="250" height="300">
                    </div>
                    <!--                    <span id="caption"> </span>-->

                    <div class="single_small_image_list">
                        <div class="image_single_list">
                            <a href="../image/books/s${book.productID}1.jpg" >
                                <img src="../image/books/s${book.productID}1.jpg" alt="" width="75">
                            </a>
                        </div>
                        <div class="image_single_list">
                            <a href="../image/books/s${book.productID}2.jpg" >
                                <img src="../image/books/s${book.productID}2.jpg" alt="" width="75">
                            </a>
                        </div>
                        <div class="image_single_list">
                            <a href="../image/books/s${book.productID}3.jpg" >
                                <img src="../image/books/s${book.productID}3.jpg" alt="" width="75">
                            </a>
                        </div>
                    </div>
                </div>
                <section class="single_prod_details">
                    <div class="single_product_title">
                        <h4>${book.bookName}</h4>
                        <p>$${book.product.price}</p>
                    </div>
                    <form action="<c:url value='/order/addItem'/>" name="cart" class="single_product_page_price" method="POST">
                        <div class="single_product_cart">
                            <div>
                                <input type="image" src="../image/cart.png" alt="submit" width="70">
                                <input type="hidden" name="productCode" value="<c:out value='${book.productID}'/>">
                            </div>
                            <p>Add to cart</p>
                        </div>
                    </form>
                    <section class="single_overview">
                        <h5>PRODUCT OVERVIEW</h5>
                        <p>${book.description}</p>
                    </section>
                </section>
            </div>

            <div>
                <ul>
                    <li><a href="#tabs-1">Description</a></li>
                    <!--                        <li><a href="#tabs-2">ISBN</a></li>-->
                    <li><a href="#tabs-2">Author</a></li>
                    <li><a href="#tabs-3">Publish Date</a></li>
                    <li><a href="#tabs-4">Publisher</a></li>
                </ul>
                <div id="tabs-1">
                    <p>${book.description}</p>
                </div>
                <!--                    <div id="tabs-2">
                                        <p>${book.isbn}</p>
                                    </div>-->
                <div id="tabs-2">
                    <p>${book.author}</p>
                </div>
                <div id="tabs-3">
                    <p>${book.publishDate}</p>
                </div>
                <div id="tabs-4">
                    <p>${book.publisher}</p>
                </div>
            </div>
        </section>


        <div align = "center">
            <video id="videoplayer" controls width="800"  poster="../images/sampson_poster.png">
                <source src="../media/sampson.mp4">
                <source src="../media/sampson.webm" type='video/webm; codecs="vp8, vorbis"'>
                <source src="../media/sampson.ogv" type='video/ogg; codecs="theora, vorbis"'>
                <object type="application/x-shockwave-flash" width="480" height="270">
                    <param name="movie" value="/media/sampson.swf">
                    <param name="wmode" value="transparent">
                    <param name="quality" value="high">
                    <!--[if !IE]>-->
                    <object type="application/x-shockwave-flash"
                            data="../media/sampson.swf"
                            width="480" height="270">
                        <param name="wmode" value="transparent">
                        <param name="quality" value="high">
                    </object>
                    <!--<![endif]-->
                </object>        
            </video>
        </div>
        <c:import url="/Include/footer.jsp" />
</body>
<!-- end of center content -->
</html>
