<%-- 
    Document   : search
    Created on : Jun 24, 2015, 11:46:15 PM
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
        <link rel="stylesheet" type="text/css" href="<c:url value='/style/cart.css'/>" />
        <!--added HTML5 shiv-->
        <!--[if lt IE 9]>
        <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/r29/html5.min.js"></script>
        <![endif]-->
        <script type="text/javascript" src="js/boxOver.js"></script>
    </head>

    <c:import url="/Include/header.jsp" />

    <div class="left_content">
        <div class="title_box">Plant &amp; Planters</div>
        <ul class="left_menu">
            <!--added a fake link which shows "under construction"-->
            <li class="odd"><a href="<c:url value='/annuals.jsp'/>">Annuals</a></li>
            <li class="even"><a href="<c:url value='/under_const.html'/>">Shrubs</a></li>
            <li class="odd"><a href="<c:url value='/under_const.html'/>">Trees</a></li>
            <li class="even"><a href="<c:url value='/under_const.html'/>">Fruit Plants</a></li>
            <li class="odd"><a href="<c:url value='/under_const.html'/>">House Plants</a></li>
            <li class="even"><a href="<c:url value='/under_const.html'/>">Perennials</a></li>
            <li class="odd"><a href="<c:url value='/tools.jsp'/>">Garden Tools</a></li>
            <li class="even"><a href="<c:url value='/books.jsp'/>">Books</a></li>
            <li class="odd"><a href="<c:url value='/under_const.html'/>">DVDs</a></li>
        </ul>
        <div class="title_box">Guide</div>
        <ul class="left_menu">
            <li class="odd"><a href="#">Fall Containers</a></li>
            <li class="even"><a href="#">Meet Cool Wave</a></li>
            <li class="odd"><a href="#">Tips:Planting</a></li>
            <li class="even"><a href="#">Plant, Trees and Shrubs</a></li>
            <li class="odd"><a href="#">Easy Care Garden</a></li>
            <li class="even"><a href="#">Plant a Bulb Garden</a></li>
        </ul>
        <!--    <div class="title_box">Newsletter</div>
            <div class="border_box">
                <input type="text" name="newsletter" class="newsletter_input" value="your email"/>
                <a href="#" class="join">join</a> </div>-->
    </div>
    <!-- end of the left content -->
    <div class="center_content">
        <h2>Your search returned ${searchCount} items:</h2>
        <c:choose>
            <c:when test="${searchResult == null}">
                <h1 style="font-size: 18px">No item is found.</h1>
            </c:when>
            <c:otherwise>
                <c:forEach var="item" items="${searchResult}">
                    <c:if test="${item.plant != null}">
                        <section class="product_left">

                            <form action="<c:url value='display/displayPlant'/>" name="plant" method="POST">
                                <div class="book_img">
                                    <input type="image" src="image/annual/${item.productID}.jpg" alt="single product" width="120">
                                    <input type="hidden" name="productCode" value="${item.productID}">
                                </div>
                            </form>            

                            <div class="product_discrp">
                                <p>${item.productName}</p>
                            </div>
                            <form action="<c:url value='order/addItem'/>" name="cart" class="price" method="POST">
                                <p>$${item.price}</p>
                                <div class="carts">
                                    <input type="image" src="image/cart.png" alt="submit Button" width="60">
                                    <input type="hidden" name="productCode" value="${item.productID}">
                                    <p>Add to cart</p></div>
                            </form>
                        </section>
                    </c:if>

                    <c:if test="${item.tools != null}">
                        <section class="product_left">

                            <form action="<c:url value='display/displayTool'/>" name="plant" method="POST">
                                <div class="book_img">
                                    <input type="image" src="image/tool/${item.productID}.jpg" alt="single product" width="120">
                                    <input type="hidden" name="productCode" value="${item.productID}">
                                </div>
                            </form>            

                            <div class="product_discrp">
                                <p>${item.productName}</p>
                            </div>
                            <form action="<c:url value='order/addItem'/>" name="cart" class="price" method="POST">
                                <p>$${item.price}</p>
                                <div class="carts">
                                    <input type="image" src="image/cart.png" alt="submit Button" width="60">
                                    <input type="hidden" name="productCode" value="${item.productID}">
                                    <p>Add to cart</p></div>
                            </form>
                        </section>
                    </c:if>

                    <c:if test="${item.book != null}">
                        <section class="product_left">

                            <form action="<c:url value='display/displayBook'/>" name="plant" method="POST">
                                <div class="book_img">
                                    <input type="image" src="image/books/${item.productID}.jpg" alt="single product" width="120">
                                    <input type="hidden" name="productCode" value="${item.productID}">
                                </div>
                            </form>            

                            <div class="product_discrp">
                                <p>${item.productName}</p>
                            </div>
                            <form action="<c:url value='order/addItem'/>" name="cart" class="price" method="POST">
                                <p>$${item.price}</p>
                                <div class="carts">
                                    <input type="image" src="image/cart.png" alt="submit Button" width="60">
                                    <input type="hidden" name="productCode" value="${item.productID}">
                                    <p>Add to cart</p></div>
                            </form>
                        </section>
                    </c:if>

                </c:forEach>
            </c:otherwise>
        </c:choose>

        <c:import url="/Include/footer.jsp" />

