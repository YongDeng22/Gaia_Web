<%-- 
    Document   : contact
    Created on : Jun 19, 2015, 3:21:27 PM
    Author     : yongdeng
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--I moved the <head> section from the header.html file and put at the top of each jsp/html file
    so that a specific head section can be applied to each individual view.
A html5 shiv link has also been added into the head section ---  Yong Deng-->

<html>
    <head>
        <title>Gaia's plant world</title>
        <meta charset="UTF-8">
        <!--changed charset to utf-8-->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/style/style.css'/>" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/style/contact.css'/>" />
        <!--added HTML5 shiv-->
        <!--[if lt IE 9]>
        <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/r29/html5.min.js"></script>
        <![endif]-->
        <script type="text/javascript" src="js/boxOver.js"></script>
    </head>

<c:import url="/Include/header.jsp" />

    <section class="contact_section">
        <h1>Customer Service</h1>
        <p>
        We want to back our music albums up with the best possible service. 
        Whether you have a question about what albums we offer, need a printed 
        catalog, or need help with an order, just let us know. We'll do everything 
        we can to make it easy and enjoyable for you to do business with us.
        </p>
        <p>
        If you have questions or comments, please contact us 
        in whatever way is most convenient for you. We look forward to hearing from you!
        </p>
        <h2>Phone:<span>  1-xxx-xxx-xxx</span></h2>
        <h2>FAX:<span>  1-xxx-xxx-xxx</span></h2>
        <h2>Email:<span>  <a href="mailto:custserv@gaias.com">custserv@gaias.com</a></span></h2>
<!--        <p><a href="mailto:custserv@gaias.com">custserv@gaias.com</a></p>        -->
    </section>

<!-- end of center content -->
<c:import url="/Include/footer.jsp" />
