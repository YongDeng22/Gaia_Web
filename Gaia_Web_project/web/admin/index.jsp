<%-- 
    Document   : index
    Created on : Jun 29, 2015, 12:26:00 PM
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
        <link rel="stylesheet" type="text/css" href="<c:url value='/style/login.css'/>" />
        <!--added HTML5 shiv-->
        <!--[if lt IE 9]>
        <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/r29/html5.min.js"></script>
        <![endif]-->
<!--        <script type="text/javascript" src="/js/boxOver.js"></script>-->
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
            <li class="odd"><a href="<c:url value='/under_const.html'/>">Fall Containers</a></li>
            <li class="even"><a href="<c:url value='/under_const.html'/>">Meet Cool Wave</a></li>
            <li class="odd"><a href="<c:url value='/under_const.html'/>">Tips:Planting</a></li>
            <li class="even"><a href="<c:url value='/under_const.html'/>">Plant, Trees and Shrubs</a></li>
            <li class="odd"><a href="<c:url value='/under_const.html'/>">Easy Care Garden</a></li>
            <li class="even"><a href="<c:url value='/under_const.html'/>">Plant a Bulb Garden</a></li>
        </ul>
        <!--    <div class="title_box">Newsletter</div>
            <div class="border_box">
                <input type="text" name="newsletter" class="newsletter_input" value="your email"/>
                <a href="#" class="join">join</a> </div>-->
    </div>
        
    <section class="invoice-section">

        <h1>Admin Menu</h1>

        <!-- these Form tags don't force a secure connection -->
        <form action="<c:url value='/adminController/displayInvoices'/>" method="post">
            <input type="submit" value="Process Invoices" class="left_margin">
        </form>
<!--        <form action="reports.jsp" method="post">
            <input type="submit" value="Display Reports" class="left_margin">
        </form>-->

    </section>


    <c:import url="/Include/footer.jsp" />
