<%-- 
    Document   : annuals
    Created on : Jun 17, 2015, 10:25:30 AM
    Author     : yongdeng
--%>

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
        <!--added HTML5 shiv-->
        <!--[if lt IE 9]>
        <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/r29/html5.min.js"></script>
        <![endif]-->
        <script type="text/javascript" src="js/boxOver.js"></script>
    </head>

    <c:import url="/Include/header.jsp" />

    <!--changed to aside and nav-->
    <aside class="left_content">
        <div class="title_box">Plant &amp; Planters</div>
        <nav>
            <ul class="left_menu">
                <li class="odd"><a href="<c:url value='/annuals.jsp'/>">Annuals</a></li>
                <li class="even"><a href="<c:url value='/annuals.jsp'/>">Shrubs</a></li>
                <li class="odd"><a href="<c:url value='/annuals.jsp'/>">Trees</a></li>
                <li class="even"><a href="<c:url value='/annuals.jsp'/>">Fruit Plants</a></li>
                <li class="odd"><a href="<c:url value='/annuals.jsp'/>">House Plants</a></li>
                <li class="even"><a href="<c:url value='/annuals.jsp'/>">Perennials</a></li>
                <li class="odd"><a href="<c:url value='/tools.jsp'/>">Garden Tools</a></li>
                <li class="even"><a href="<c:url value='/books.jsp'/>">Books</a></li>
                <li class="odd"><a href="<c:url value='/books.jsp'/>">DVDs</a></li>
            </ul>
        </nav>

        <div class="title_box">Guide</div>
        <nav>
            <ul class="left_menu">
                <li class="odd"><a href="<c:url value='/under_const.html'/>">Fall Containers</a></li>
                <li class="even"><a href="<c:url value='/under_const.html'/>">Meet Cool Wave</a></li>
                <li class="odd"><a href="<c:url value='/under_const.html'/>">Tips:Planting</a></li>
                <li class="even"><a href="<c:url value='/under_const.html'/>">Plant, Trees and Shrubs</a></li>
                <li class="odd"><a href="<c:url value='/under_const.html'/>">Easy Care Garden</a></li>
                <li class="even"><a href="<c:url value='/under_const.html'/>">Plant a Bulb Garden</a></li>
            </ul>
        </nav>

        <form action="" methos="POST" class="leftSideFilter">
            <div class="title_box">Price</div>
            <input type="checkbox" name="ten" value="10">$0-$10<br>
            <input type="checkbox" name="twenty" value="15">$10-$20<br>
            <input type="checkbox" name="thirty" value="15">$20-$30<br>
            <input type="checkbox" name="gtthirty" value="15">Above $30<br>
        </form>

        <!--    <form action="" methos="POST" class="leftSideFilter">
                <div class="title_box">Year</div>
                <input type="checkbox" name="2000" value="2000">Before 2000<br>
                <input type="checkbox" name="2005" value="2005">2000-2005<br>
                <input type="checkbox" name="2010" value="2010">2005-2010<br>
                <input type="checkbox" name="2015" value="2015">After 2010<br>
            </form>-->

        <!--    <div class="title_box">Newsletter</div>
        
                changed to form
            <form class="border_box" methods="POST">
                <input type="text" name="newsletter" class="newsletter_input" value="your email"/>
                <a href="#" class="join">join</a> 
            </form>-->
    </aside>
    <!-- end of the left content -->


    <section>
        <form action="" name="" class="filter">
            <input type="submit" name="match" value="Sort&nbsp;by&nbsp;Best&nbsp;match">
            <input type="submit" name="low" value="Price&nbsp;(high&nbsp;to&nbsp;low)">
            <input type="submit" name="high" value="Price&nbsp;(low&nbsp;to&nbsp;high)">
            <input type="submit" name="rating" value="Customer&nbsp;Ratings">
        </form>


        <section class="product_left">
            <!--            <a class="book_img" href="">
                            <img src="image/books/200011.jpg" alt="book image" width="120"/>
                        </a>-->

            <form action="<c:url value='display/displayTool'/>" name="tool" method="POST">
                <div class="book_img">
                    <input type="image" src="image/tool/200015.jpg" alt="single product" width="120">
                    <input type="hidden" name="productCode" value="200015">
                </div>
            </form>            

            <div class="product_discrp">
                <p>Fiskars 5.5 in. Bypass Pruner</p>
            </div>
            <form action="<c:url value='order/addItem'/>" name="cart" class="price" method="POST">
                <p>$11.97</p>
                <div class="carts">
                    <input type="image" src="image/cart.png" alt="submit Button" width="60">
                    <input type="hidden" name="productCode" value="200015">
                    <p>Add to cart</p></div>
            </form>
        </section>

        <section class="product_left">
            <!--            <a class="book_img" href="">
                            <img src="image/books/200011.jpg" alt="book image" width="120"/>
                        </a>-->

            <form action="<c:url value='display/displayTool'/>" name="tool" method="POST">
                <div class="book_img">
                    <input type="image" src="image/tool/200016.jpg" alt="single product" width="120">
                    <input type="hidden" name="productCode" value="200016">
                </div>
            </form>            

            <div class="product_discrp">
                <p>True Temper 6 cu. ft. Wheelbarrow with Steel Handles and Flat Free Tire</p>
            </div>
            <form action="<c:url value='order/addItem'/>" name="cart" class="price" method="POST">
                <p>$87.98</p>
                <div class="carts">
                    <input type="image" src="image/cart.png" alt="submit Button" width="60">
                    <input type="hidden" name="productCode" value="200016">
                    <p>Add to cart</p></div>
            </form>
        </section>    


        <section class="product_left">
            <!--            <a class="book_img" href="">
                            <img src="image/books/200011.jpg" alt="book image" width="120"/>
                        </a>-->

            <form action="<c:url value='display/displayTool'/>" name="tool" method="POST">
                <div class="book_img">
                    <input type="image" src="image/tool/200017.jpg" alt="single product" width="120">
                    <input type="hidden" name="productCode" value="200017">
                </div>
            </form>            

            <div class="product_discrp">
                <p>Toro Personal Pace Recycler 22 in. Variable Speed Self-Propelled Gas Lawn Mower with Briggs & Stratton Engine</p>
            </div>
            <form action="<c:url value='order/addItem'/>" name="cart" class="price" method="POST">
                <p>$399.00</p>
                <div class="carts">
                    <input type="image" src="image/cart.png" alt="submit Button" width="60">
                    <input type="hidden" name="productCode" value="200017">
                    <p>Add to cart</p></div>
            </form>
        </section>


        <section class="product_left">
            <!--            <a class="book_img" href="">
                            <img src="image/books/200011.jpg" alt="book image" width="120"/>
                        </a>-->

            <form action="<c:url value='display/displayTool'/>" name="tool" method="POST">
                <div class="book_img">
                    <input type="image" src="image/tool/200018.jpg" alt="single product" width="120">
                    <input type="hidden" name="productCode" value="200018">
                </div>
            </form>            

            <div class="product_discrp">
                <p>Vertex Garden Essentials Tools Set</p>
            </div>
            <form action="<c:url value='order/addItem'/>" name="cart" class="price" method="POST">
                <p>$15.90</p>
                <div class="carts">
                    <input type="image" src="image/cart.png" alt="submit Button" width="60">
                    <input type="hidden" name="productCode" value="200018">
                    <p>Add to cart</p></div>
            </form>
        </section> 





        <!--    <section class="product_left">
                <a class="book_img" href="">
                    <img src="image/tool/200015.jpg" alt="" width="120"/>
                </a>
                <div class="product_discrp">
                    <p>Fiskars 5.5 in. Bypass Pruner</p>
                </div>
                <form action="" name="" class="price">
                    <p>$11.97</p>
                    <div class="cart">
                        <input type="image" src="image/cart.png" alt="submit Button" width="60">
                        <input type="hidden" name="productCode" value="200015">
                        <p>Add to cart</p></div>
                </form>
            </section>  -->

        <!--    <section class="product_left">
                <a class="book_img" href="">
                    <img src="image/tool/200016.jpg" alt="" width="120"/>
                </a>
                <div class="product_discrp">
                    <p>True Temper 6 cu. ft. Wheelbarrow with Steel Handles and Flat Free Tire</p>
                </div>
                <form action="" name="" class="price">
                    <p>$87.98</p>
                    <div class="cart">
                        <input type="image" src="image/cart.png" alt="submit Button" width="60">
                        <input type="hidden" name="productCode" value="200016">
                        <p>Add to cart</p></div>
                </form>
            </section>  -->

        <!--    <section class="product_left">
                <a class="book_img" href="">
                    <img src="image/tool/200017.jpg" alt="" width="120"/>
                </a>
                <div class="product_discrp">
                    <p>Toro Personal Pace Recycler 22 in. Variable Speed Self-Propelled Gas Lawn Mower with Briggs & Stratton Engine</p>
                </div>
                <form action="" name="" class="price">
                    <p>399.00</p>
                    <div class="cart">
                        <input type="image" src="image/cart.png" alt="submit Button" width="60">
                        <input type="hidden" name="productCode" value="200017">
                        <p>Add to cart</p></div>
                </form>
            </section>  -->

        <!--    <section class="product_left">
                <a class="book_img" href="">
                    <img src="image/tool/200018.jpg" alt="" width="120"/>
                </a>
                <div class="product_discrp">
                    <p>Vertex Garden Essentials Tools Set</p>
                </div>
                <form action="" name="" class="price">
                    <p>$15.90</p>
                    <div class="cart">
                        <input type="image" src="image/cart.png" alt="submit Button" width="60">
                        <input type="hidden" name="productCode" value="200018">
                        <p>Add to cart</p></div>
                </form>
            </section>    -->
    </section>


    <!-- end of center content -->
    <c:import url="/Include/footer.jsp" />