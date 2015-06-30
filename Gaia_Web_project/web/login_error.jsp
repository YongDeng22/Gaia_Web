<%-- 
    Document   : login_error
    Created on : Jun 29, 2015, 5:45:22 PM
    Author     : yongdeng
--%>

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

    <section class="invoice-section">

        <h1>Login Form - Error</h1>
        <p>You did not log in successfully.</p>
        <p>Please check your username and password and try again.</p>

        <form action="j_security_check" method="get">
            <label>Username</label>
            <input type="text" name="j_username"><br>
            <label>Password</label>
            <input type="password" name="j_password"><br>
            <label>&nbsp;</label>
            <input type="submit" value="Login">
        </form>

    </section>
    <c:import url="/Include/footer.jsp" />

