
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
            <li class="odd"><a href="annuals.jsp">Annuals</a></li>
            <li class="even"><a href="under_const.html">Shrubs</a></li>
            <li class="odd"><a href="under_const.html">Trees</a></li>
            <li class="even"><a href="under_const.html">Fruit Plants</a></li>
            <li class="odd"><a href="under_const.html">House Plants</a></li>
            <li class="even"><a href="under_const.html">Perennials</a></li>
            <li class="odd"><a href="tools.jsp">Garden Tools</a></li>
            <li class="even"><a href="books.jsp">Books</a></li>
            <li class="odd"><a href="under_const.html">DVDs</a></li>
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
        <!--        <div class="title_box">Newsletter</div>
                <div class="border_box">
                    <input type="text" name="newsletter" class="newsletter_input" value="your email"/>
                    <a href="#" class="join">join</a> </div>-->
    </div> 

    <section class="invoice-section">
        <h1>Login Form</h1>
        <p>${message}</p>
        <h3><a href="<c:url value='/user/register.jsp'/>">Click here to signup</a></h3>

        <form action="<c:url value='/customer/login'/>" method="POST">
            <label>Username</label>
            <input type="text" name="username"><br><br/>
            <label>Password</label>
            <input type="password" name="password"><br><br/>
            <label>&nbsp;</label><br/>
            <input type="submit" value="Login">
        </form>

    </section>

    <!-- end the middle column -->

    <jsp:include page="/Include/footer.jsp" />