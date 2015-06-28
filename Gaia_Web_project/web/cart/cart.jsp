<%-- 
    Document   : cart
    Created on : Jun 18, 2015, 9:09:17 AM
    Author     : zuo
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
        <h2>Your cart</h2>
        <c:choose>
            <c:when test="${login == null}">
                <p>To checkout, please <a href="<c:url value='/user/login.jsp'/>">log in.</a></p>
            </c:when>
            <c:otherwise>
                <p>You are logged in as ${customer.firstName}</p>
            </c:otherwise>
        </c:choose>
        <c:choose>
            <c:when test="${cart.items == null}">
                <h1 style="font-size: 18px">Your cart is empty.</h1>
            </c:when>
            <c:otherwise>
                <table id="cart_table">
                    <tr>
                        <th>Quantity</th>
                        <th>Product Name</th>
                        <th>Price</th>
                        <th>Amount</th>
                        <th>&nbsp;</th>
                    </tr>
                    <c:forEach var="item" items="${cart.items}">
                        <tr class="cart_row">
                            <td>
                                <form action="<c:url value='order/updateItem'/>" method="post">
                                    <input type="hidden" name="productCode" 
                                           value="<c:out value='${item.product.productID}'/>">
                                    <div class="cart_quantity_box">
                                        <input type=text name="quantity" size="10" value="<c:out value='${item.quantity}'/>" id="quantity">
                                    </div>
                                    <div class="cart_update_button">
                                        <input type="submit" value="Update">
                                    </div>
                                </form>                
                            </td>
                            <td>${item.product.productName}</td>
                            <td class="cart_price">$${item.product.price}</td>
                            <td class="cart_price">$${item.subTotal}</td>
                            <!--                            <td></td>-->
                            <td>
                                <form action="<c:url value='order/removeItem'/>" method="post">
                                    <input type="hidden" name="productCode" 
                                           value="<c:out value='${item.product.productID}'/>">
                                    <input type="submit" value="Remove" >
                                </form>                  
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                <div calss="cart_total">
                    <h2>Total: $${cart.total}</h2>
                </div>
                <div class="cart_info">
                    <p><b>To change the quantity for an item</b>, enter the new quantity 
                        and click on the Update button.</p>
                    <p><b>To remove an item</b>, click on the Remove button.</p>
                </div>
            </c:otherwise>
        </c:choose>

        <form action="<c:url value='/catalog'/>" method="GET" id="continue-shopping">
            <input type="submit" value="Continue Shopping">
        </form>
        <c:choose>
            <c:when test="${cart != null}">
                <form action="<c:url value='/checkout/checkUser'/>" method="POST" id="continue-shopping">
                <input type="submit" value="Checkout">
            </form>
            </c:when>
        </c:choose>    

        <c:import url="/Include/footer.jsp" />

