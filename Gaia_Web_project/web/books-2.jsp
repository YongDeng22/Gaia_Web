<%-- 
    Document   : books
    Created on : Jun 13, 2015, 10:45:12 PM
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

    <c:import url="/Include/header.html" />

    <!--changed to aside and nav-->
    <aside class="left_content">
        <div class="title_box">Plant &amp; Planters</div>
        <nav>
            <ul class="left_menu">
                <li class="odd"><a href="#">Annuals</a></li>
                <li class="even"><a href="#">Shrubs</a></li>
                <li class="odd"><a href="#">Trees</a></li>
                <li class="even"><a href="#">Fruit Plants</a></li>
                <li class="odd"><a href="#">House Plants</a></li>
                <li class="even"><a href="#">Perennials</a></li>
                <li class="odd"><a href="#">Garden Tools</a></li>
                <li class="even"><a href="books.jsp">Books</a></li>
                <li class="odd"><a href="dvd.jsp">DVDs</a></li>
            </ul>
        </nav>

        <div class="title_box">Guide</div>
        <nav>
            <ul class="left_menu">
                <li class="odd"><a href="#">Fall Containers</a></li>
                <li class="even"><a href="#">Meet Cool Wave</a></li>
                <li class="odd"><a href="#">Tips:Planting</a></li>
                <li class="even"><a href="#">Plant, Trees and Shrubs</a></li>
                <li class="odd"><a href="#">Easy Care Garden</a></li>
                <li class="even"><a href="#">Plant a Bulb Garden</a></li>
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
            <div class="title_box">Year</div>
            <input type="checkbox" name="2000" value="2000">Before 2000<br>
            <input type="checkbox" name="2005" value="2005">2000-2005<br>
            <input type="checkbox" name="2010" value="2010">2005-2010<br>
            <input type="checkbox" name="2015" value="2015">After 2010<br>
        </form>

        <div class="title_box">Newsletter</div>

        <!--    changed to form-->
        <form class="border_box" methods="POST">
            <input type="text" name="newsletter" class="newsletter_input" value="your email"/>
            <a href="#" class="join">join</a> 
        </form>
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
            <a class="book_img" href="">
                <img src="image/books/200011.jpg" alt="book image" width="120"/>
            </a>
            <div class="product_discrp">
                <p>Ultimate Gardening Book: 5 Gardening Books in 1</p>
            </div>
            <form action="" name="" class="price">
                <p>$5.00</p>
                <div class="cart">
                    <input type="image" src="image/cart.png" alt="submit Button" width="60">
                    <input type="hidden" name="productCode" value="200011">
                    <p>Add to cart</p></div>
            </form>
        </section>  

        <section class="product_left">
            <a class="book_img" href="">
                <img src="image/books/200012.jpg" alt="book image" width="120"/>
            </a>
            <div class="product_discrp">
                <p>Gardening: Raised Bed Gardening: Vegetable and Flower Growing Made Easy!</p>
            </div>
            <form action="" name="" class="price">
                <p>$6.00</p>
                <div class="cart">
                    <input type="image" src="image/cart.png" alt="submit Button" width="60">
                    <input type="hidden" name="productCode" value="200012">
                    <p>Add to cart</p></div>
            </form>
        </section>  

        <section class="product_left">
            <a class="book_img" href="">
                <img src="image/books/200013.jpg" alt="book image" width="120"/>
            </a>
            <div class="product_discrp">
                <p>The Beginner's Guide to Gardening</p>
            </div>
            <form action="" name="" class="price">
                <p>$9.00</p>
                <div class="cart">
                    <input type="image" src="image/cart.png" alt="submit Button" width="60">
                    <input type="hidden" name="productCode" value="200013">
                    <p>Add to cart</p></div>
            </form>
        </section>  

        <section class="product_left">
            <a class="book_img" href="">
                <img src="image/books/200014.jpg" alt="book image" width="120"/>
            </a>
            <div class="product_discrp">
                <p>Gardening: The Ultimate Beginner's Guide</p>
            </div>
            <form action="" name="" class="price">
                <p>$12.00</p>
                <div class="cart">
                    <input type="image" src="image/cart.png" alt="submit Button" width="60">
                    <input type="hidden" name="productCode" value="200014">
                    <p>Add to cart</p></div>
            </form>
        </section>    
    </section>


    <!-- end of center content -->
    <c:import url="/Include/footer.jsp" />