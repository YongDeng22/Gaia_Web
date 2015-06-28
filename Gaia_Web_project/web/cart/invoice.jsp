<!DOCTYPE html>

<html>
    <head>
        <title>Gaia's plant world</title>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <meta charset="UTF-8">
        <!--changed charset to utf-8-->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/style/style.css'/>" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/style/book.css'/>" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/style/login.css'/>" />
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

    <section class="invoice-section">

                <h1>Your invoice: Order Number ${order.orderNumber}</h1>
                <p>Order Number ${order.orderNumber}</p>
                <p>Order date: ${order.purchaseDate}</p>

                <table>
                    <tr>
                        <th>Quantity</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Subtotal</th>
                    </tr>
                    <c:forEach var="item" items="${order.orderLineCollection}">
                        <tr>
                            <td>${item.quantity}</td>
                            <td>${item.product.productName}</td>
                            <td>$${item.product.price}</td>
                            <td>${item.subTotal}</td>
                        </tr>
                    </c:forEach>
                </table>

                <h4>Total: $${cart.total}</h4>
                <p>Ship to: ${customer.firstName} ${customer.lastName}</p>
                <p indent="9">         ${customer.street}</p>
                <p indent="9">         ${customer.city} </p>
                <p indent="9">         ${customer.states} ${customer.zip}</p>
                <p indent="9">         ${customer.phone}</p>
                <p indent="9">         ${customer.email}</p>


<!--                <form action="<:url value='/checkout/displayUser' />" method="post" id="float_left">
                    <input type="submit" value="Edit Address">
                </form>-->

                <form action="<c:url value='/checkout/displayCreditCard' />" method="post">
                    <input type="submit" value="Continue">
                </form>
    </section>

    <!-- end middle column -->

    <jsp:include page="/Include/footer.jsp" />