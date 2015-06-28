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
        <link rel="stylesheet" type="text/css" href="<c:url value='/style/book.css'/>" />
        <!--added HTML5 shiv-->
        <!--[if lt IE 9]>
        <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/r29/html5.min.js"></script>
        <![endif]-->
        <script type="text/javascript" src="js/boxOver.js"></script>
    </head>

    <c:import url="/Include/header.jsp" />

    <section class="contact_section">
        <h1>Gaia's Plant World</h1>
        <img src='image/about.jpg' width='500' alt='Our image'/>
        <p>
            Gaia&rsquo;s Plant World is a retail site for all North American gardening and landscaping needs. They want to be able to show off their large current catalog of annual and perennial plants, shrubs, and trees which are updated on a seasonal basis. They have other products such as gardening hardware, tools, books, and DVD&rsquo;s as well. All these offerings should be browsable and orderable on-line. Instructional gardening videos should be available to view online. They want customers to be able to fill in their plant hardiness zone (http://planthardiness.ars.usda.gov/) or zip code, along with some basic requirements for the customer's choice of planting material, in order to produce a list of possible plants, shrubs and trees for purchase. In addition they want to proactively keep in touch with loyal customers using e-mail and other means such as an RSS/ATOM feed with interesting topical information.
        </p>
        <p>
            <br>In addition to the above basic requirements, our website will also be able to collect feedbacks from the customers. Connectivity to popular social networks will be available as well. Some other major details that will be implemented in our website including sign in, account, shopping cart, search, and search result filter.
        </p>

    </section>

    <!-- end of center content -->
    <c:import url="/Include/footer.jsp" />
