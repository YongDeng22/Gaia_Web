<%-- 
    Document   : zone
    Created on : Jun 22, 2015, 10:55:50 AM
    Author     : zuo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
    </aside>
    <!-- end of the left content -->
    <div class="center_content">
        <div class="center_title_bar">Enter zip code(ex:06516)</div>
        <form action="<c:url value='HardinessZone/findZone' />" method="POST">
            <input type="text" name="zipcode" required>
            <input type="submit" value="Find">
        </form>
        
        <div class="tableZone">
            <c:choose>
                <c:when test="${hardinessZone == null}">No result
                </c:when>
                <c:otherwise>
                    <table class="tableZonetable">
                        <tr>
                            <td>Zip</td>
                            <td>City</td>
                            <td>State</td>
                            <td>Zone</td>
 <!--           <th>&nbsp;</th> -->
                        </tr>
                        <tr>
                            <td>${hardinessZone.zip}</td>
                            <td>${hardinessZone.city}</td>
                            <td>${hardinessZone.state}</td>
                            <td>${hardinessZone.zone}</td>
                        </tr>
                    </table>
                </c:otherwise>
            </c:choose>
        </div> 
    </div>
    <!-- end of center content -->
    <c:import url="/Include/footer.jsp" />
