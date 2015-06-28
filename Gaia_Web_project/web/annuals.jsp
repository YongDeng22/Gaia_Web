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

        <form action="" methos="POST" class="leftSideFilter">
            <div class="title_box">Hardiness Zone</div>
            <input type="checkbox" name="zone1" value="1">0-2<br>
            <input type="checkbox" name="zone2" value="2">3-6<br>
            <input type="checkbox" name="zone3" value="3">7-9<br>
            <input type="checkbox" name="zone4" value="4">10-12<br>
        </form>

<!--        <div class="title_box">Newsletter</div>

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
            
            <form action="<c:url value='display/displayPlant'/>" name="plant" method="POST">
                <div class="book_img">
                    <input type="image" src="image/annual/200001.jpg" alt="single product" width="120">
                    <input type="hidden" name="productCode" value="200001">
                </div>
            </form>            
            
            <div class="product_discrp">
                <p>Supertunia Royal Velvet Petunia</p>
            </div>
            <form action="<c:url value='order/addItem'/>" name="cart" class="price" method="POST">
                <p>$9.99</p>
                <div class="carts">
                    <input type="image" src="image/cart.png" alt="submit Button" width="60">
                    <input type="hidden" name="productCode" value="200001">
                    <p>Add to cart</p></div>
            </form>
        </section>
        
                
                                <section class="product_left">
<!--            <a class="book_img" href="">
                <img src="image/books/200011.jpg" alt="book image" width="120"/>
            </a>-->
            
            <form action="<c:url value='display/displayPlant'/>" name="plant" method="POST">
                <div class="book_img">
                    <input type="image" src="image/annual/200002.jpg" alt="single product" width="120">
                    <input type="hidden" name="productCode" value="200002">
                </div>
            </form>            
            
            <div class="product_discrp">
                <p>June Plantain Lily</p>
            </div>
            <form action="<c:url value='order/addItem'/>" name="cart" class="price" method="POST">
                <p>$9.99</p>
                <div class="carts">
                    <input type="image" src="image/cart.png" alt="submit Button" width="60">
                    <input type="hidden" name="productCode" value="200002">
                    <p>Add to cart</p></div>
            </form>
        </section>
        
        
         <section class="product_left">
<!--            <a class="book_img" href="">
                <img src="image/books/200011.jpg" alt="book image" width="120"/>
            </a>-->
            
            <form action="<c:url value='display/displayPlant'/>" name="plant" method="POST">
                <div class="book_img">
                    <input type="image" src="image/annual/200003.jpg" alt="single product" width="120">
                    <input type="hidden" name="productCode" value="200003">
                </div>
            </form>            
            
            <div class="product_discrp">
                <p>Incrediball Hydrangea Shrub</p>
            </div>
            <form action="<c:url value='order/addItem'/>" name="cart" class="price" method="POST">
                <p>$5.12</p>
                <div class="carts">
                    <input type="image" src="image/cart.png" alt="submit Button" width="60">
                    <input type="hidden" name="productCode" value="200003">
                    <p>Add to cart</p></div>
            </form>
        </section>
        
                
                         <section class="product_left">
<!--            <a class="book_img" href="">
                <img src="image/books/200011.jpg" alt="book image" width="120"/>
            </a>-->
            
            <form action="<c:url value='display/displayPlant'/>" name="plant" method="POST">
                <div class="book_img">
                    <input type="image" src="image/annual/200004.jpg" alt="single product" width="120">
                    <input type="hidden" name="productCode" value="200004">
                </div>
            </form>            
            
            <div class="product_discrp">
                <p>Cateracterum Palm</p>
            </div>
            <form action="<c:url value='order/addItem'/>" name="cart" class="price" method="POST">
                <p>$7.98</p>
                <div class="carts">
                    <input type="image" src="image/cart.png" alt="submit Button" width="60">
                    <input type="hidden" name="productCode" value="200004">
                    <p>Add to cart</p></div>
            </form>
        </section>
                
<!--        <section class="product_left">
            <a class="book_img" href="">
                <img src="image/annual/200001.jpg" alt="" width="120"/>
            </a>
            <div class="product_discrp">
                <p>Supertunia Royal Velvet Petunia</p>
            </div>
            <form action="" name="" class="price">
                <p>$9.99</p>
                <div class="cart">
                    <input type="image" src="image/cart.png" alt="submit Button" width="60">
                    <input type="hidden" name="productCode" value="200001">
                    <p>Add to cart</p></div>
            </form>
        </section>  -->

<!--        <section class="product_left">
            <a class="book_img" href="">
                <img src="image/annual/200002.jpg" alt="" width="120"/>
            </a>
            <div class="product_discrp">
                <p>June Plantain Lily</p>
            </div>
            <form action="" name="" class="price">
                <p>$18.95</p>
                <div class="cart">
                    <input type="image" src="image/cart.png" alt="submit Button" width="60">
                    <input type="hidden" name="productCode" value="200002">
                    <p>Add to cart</p></div>
            </form>
        </section>  -->

<!--        <section class="product_left">
            <a class="book_img" href="">
                <img src="image/annual/200003.jpg" alt="" width="120"/>
            </a>
            <div class="product_discrp">
                <p>Incrediball Hydrangea Shrub</p>
            </div>
            <form action="" name="" class="price">
                <p>$5.12</p>
                <div class="cart">
                    <input type="image" src="image/cart.png" alt="submit Button" width="60">
                    <input type="hidden" name="productCode" value="200003">
                    <p>Add to cart</p></div>
            </form>
        </section>  -->
<!--
        <section class="product_left">
            <a class="book_img" href="">
                <img src="image/annual/200004.jpg" alt="" width="120"/>
            </a>
            <div class="product_discrp">
                <p>Cateracterum Palm</p>
            </div>
            <form action="" name="" class="price">
                <p>$7.98</p>
                <div class="cart">
                    <input type="image" src="image/cart.png" alt="submit Button" width="60">
                    <input type="hidden" name="productCode" value="200005">
                    <p>Add to cart</p></div>
            </form>
        </section>  -->


    </section>


    <!-- end of center content -->
    <c:import url="/Include/footer.jsp" />