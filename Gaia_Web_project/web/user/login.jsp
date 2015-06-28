<!DOCTYPE html>

<!--I moved the <head> section from the header.html file and put at the top of each jsp/html file
    so that a specific head section can be applied to each individual view.
A html5 shiv link has also been added into the head section ---  Yong Deng-->

<html>
    <head>
        <title>Gaia's plant world</title>
        <meta charset="UTF-8">        
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!--changed charset to utf-8-->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/style/style.css'/>" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/style/book.css'/>" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/style/login.css'/>" />
        <!--added HTML5 shiv-->
        <!--[if lt IE 9]>
        <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/r29/html5.min.js"></script>
        <![endif]-->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

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
            <li class="odd"><a href="#">Fall Containers</a></li>
            <li class="even"><a href="#">Meet Cool Wave</a></li>
            <li class="odd"><a href="#">Tips:Planting</a></li>
            <li class="even"><a href="#">Plant, Trees and Shrubs</a></li>
            <li class="odd"><a href="#">Easy Care Garden</a></li>
            <li class="even"><a href="#">Plant a Bulb Garden</a></li>
        </ul>
        <div class="title_box">Newsletter</div>
        <div class="border_box">
            <input type="text" name="newsletter" class="newsletter_input" value="your email"/>
            <a href="#" class="join">join</a> </div>
    </div> 

    <section class="invoice-section">
        <h1>Login Form</h1>
        <c:choose>
            <c:when test="${login==null}">
                <h3><a href="<c:url value='/user/register.jsp'/>">Click here to signup</a></h3>
            </c:when>
            <c:otherwise>
                <p>Please enter a username and password to continue.</p><br/>
            </c:otherwise>
        </c:choose>
        <p>Please enter a username and password to continue.</p><br/>
        <form action="<c:url value='/customer/login'/>" method="post">
            <label>Username</label>
            <input type="text" name="username"><br/><br/>
            <label>Password</label>
            <input type="password" name="password"><br>
            <label>&nbsp;</label><br/>
            <input type="submit" value="Login">
        </form>
    </section>


    <!-- end of center content -->
    <c:import url="/Include/footer.jsp" />




