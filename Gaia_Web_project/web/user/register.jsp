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
    <section class="register-section">
        <h1>Register the account</h1>   
        <h4>To join our account, please enter the form below</h4>
        <p>* All fields are required</p>
        <form action="<c:url value='/customer/register'/>" method="post">
            <p><i>${messageUserName}</i></p>
            <p><i>${messagePassword}</i></p>
            <!--                <input type="hidden" name="action" value="add">-->
            <div><label class="pad_top">User Name:</label>
                <input type="text" name="userName" required/></div>
            <div><label class="pad_top">Password:</label>
                <input type="password" name="password" required/></div>
            <div><label class="pad_top">Confirm Password:</label>
                <input type="password" name="password2" required/></div>
            <div><label class="pad_top">First Name:</label>
                <input type="text" name="firstName" required/></div>
            <div><label class="pad_top">Last Name:</label>
                <input type="text" name="lastName" required/></div>
            <div><label class="pad_top">Street:</label>
                <input type="text" name="street" required/></div>
            <div><label class="pad_top">City: </label>
                <input type="text" name="city" required/></div>
            <div> <label class="pad_top">States:</label>
                <input type="text" name="states" required/></div>
            <div> <label class="pad_top">Zip:</label>
                <input type="text" name="zip" required/></div>
            <div><label class="pad_top">Phone:</label>
                <input type="text" name="phone" required/></div>
            <div><label class="pad_top">Email address:</label>
                <input type="email" name="email" required/></div>
            <div><label>&nbsp;</label>
                <input type="submit" value="Join Now"/></div>
        </form>
    </section>

    <!-- end of center content -->
    <c:import url="/Include/footer.jsp" />