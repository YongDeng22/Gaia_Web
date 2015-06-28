<%-- 
    Document   : header
    Created on : Jun 20, 2015, 4:51:13 PM
    Author     : zuo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<body>
    <!--    <div>-->
    <section id="main_container">
        <div id="header">
            <div id="logo"> <a href="index.jsp"><img src="<c:url value='/image/logo.png'/>" alt="Gaia's plant world" border="0" width="290"/></a> </div>
            <section id="header_box">
                <a class="XXX" href="<c:url value='/cart/cart.jsp'/>"><input type="button" value="Cart"></a>
                    <c:choose>
                        <c:when test="${login == null}">
                        <a class="XXX" href="<c:url value='/user/login.jsp'/>"><input type="button" value="Login"></a>
                        </c:when>
                        <c:otherwise>
                        <form class="XXX" method="POST" action="<c:url value='/customer/logout'/>">
                            <input type="submit" value="Logout">
                        </form>
                    </c:otherwise>
                </c:choose>
                <a class="XXX" href="<c:url value='/contact.jsp'/>"><input type="button" value="Contact"></a>
                <a class="XXX" href="<c:url value='/aboutUs.jsp'/>"><input type="button" value="About Us"></a>
                <a class="XXX" href="<c:url value='/index.jsp'/>"><input type="button" value="Home"></a>
            </section>
        </div>
        <!-- end of logo-->
    </section>
    <div class="search_box">
        <form action="<c:url value='/searching'/>" name="search" method="POST">
            <input class="input" type="text" name="keyword" placeholder="Enter keywords">
            <input class="searchButton" type="submit" value="Search">
        </form>
    </div>

