<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
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
        <!--        <link rel="stylesheet" type="text/css" href="style/book.css" />-->
        <!--added HTML5 shiv-->
        <!--[if lt IE 9]>
        <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/r29/html5.min.js"></script>
        <![endif]-->
        <script type="text/javascript" src="js/boxOver.js"></script>
    </head>

    <c:import url="/Include/header.jsp" />

    <aside class="left_content">
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
            <li class="odd"><a href="under_const.html">Fall Containers</a></li>
            <li class="even"><a href="under_const.html">Meet Cool Wave</a></li>
            <li class="odd"><a href="under_const.html">Tips:Planting</a></li>
            <li class="even"><a href="under_const.html">Plant, Trees and Shrubs</a></li>
            <li class="odd"><a href="under_const.html">Easy Care Garden</a></li>
            <li class="even"><a href="under_const.html">Plant a Bulb Garden</a></li>
        </ul>
<!--        <div class="title_box">Newsletter</div>
        <form class="border_box">
            <div class="newsletter_input"><input type="text" name="newsletter" value="your email"/></div>
            <div class="join"><input type="button" value="join" ></div> 
        </form>-->
    </aside>
    <!-- end of the left content -->
    <div class="center_content">
        <div class="center_title_bar">Popular Categories</div>
        <div class="prod_box">
            <div class="top_prod_box"></div>
            <div class="center_prod_box">
                <div class="product_img"><a href="annuals.jsp"><img src="image/annuals.png" alt="" border="0" width="120" height="100"/></a></div>
                <div class="product_title"><a href="annuals.jsp">Annuals</a></div>
            </div>
        </div>

        <div class="prod_box">
            <div class="top_prod_box"></div>
            <div class="center_prod_box">
                <div class="product_img"><a href="under_const.html"><img src="image/shrubs.png" alt="" border="0" width="120" height="100"/></a></div>
                <div class="product_title"><a href="under_const.html">Shrubs</a></div>
            </div>
        </div>

        <div class="prod_box">
            <div class="top_prod_box"></div>
            <div class="center_prod_box">
                <div class="product_img"><a href="under_const.html"><img src="image/trees.png" alt="" border="0" width="120" height="100"/></a></div>
                <div class="product_title"><a href="under_const.html">Trees</a></div>
            </div>
        </div>

        <div class="prod_box">
            <div class="top_prod_box"></div>
            <div class="center_prod_box">
                <div class="product_img"><a href="under_const.html"><img src="image/fruits.png" alt="" border="0" width="120" height="100"/></a></div>
                <div class="product_title"><a href="under_const.html">Fruit Plants</a></div>
            </div>
        </div>

        <div class="prod_box">
            <div class="top_prod_box"></div>
            <div class="center_prod_box">
                <div class="product_img"><a href="under_const.html"><img src="image/houseplants.png" alt="" border="0" width="120" height="100"/></a></div>
                <div class="product_title"><a href="under_const.html">House Plants</a></div>
            </div>
        </div>

        <div class="prod_box">
            <div class="top_prod_box"></div>
            <div class="center_prod_box">
                <div class="product_img"><a href="under_const.html"><img src="image/perennials.png" alt="" border="0" width="120" height="100"/></a></div>
                <div class="product_title"><a href="under_const.html">Perennials</a></div>
            </div>
        </div>

        <div class="prod_box">
            <div class="top_prod_box"></div>
            <div class="center_prod_box">
                <div class="product_img"><a href="tools.jsp"><img src="image/garden-tool.png" alt="" border="0" width="120" height="100"/></a></div>
                <div class="product_title"><a href="tools.jsp">Garden Tools</a></div>
            </div>
        </div>

        <div class="prod_box">
            <div class="top_prod_box"></div>
            <div class="center_prod_box">
                <div class="product_img"><a href="books.jsp"><img src="image/book.png" alt="" border="0" width="120" height="100"/></a></div>
                <div class="product_title"><a href="books.jsp">Books</a></div>
            </div>
        </div>
        <!-- end of the popular Categories -->
        <div class="center_title_bar">Resource Center</div>
        <div class="prod_box">
            <div class="top_prod_box"></div>
            <div class="center_prod_box">
                <div class="product_img"><a href="zone.jsp"><img src="image/hardiness.png" alt="" border="0" width="120" height="100"/></a></div>
                <div class="product_title"><a href="zone.jsp">Cold Hardiness Zone Map</a></div>
            </div>
        </div>

        <!-- end of center content -->
        <c:import url="/Include/footer.jsp" />