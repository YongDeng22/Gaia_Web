<%-- 
    Document   : header
    Created on : Jun 20, 2015, 4:51:13 PM
    Author     : zuo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<body>

    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">

    <script>
        $.widget("custom.catcomplete", $.ui.autocomplete, {
            _create: function () {
                this._super();
                this.widget().menu("option", "items", "> :not(.ui-autocomplete-category)");
            },
            _renderMenu: function (ul, items) {
                var that = this,
                        currentCategory = "";
                $.each(items, function (index, item) {
                    var li;
                    if (item.category != currentCategory) {
                        ul.append("<li class='ui-autocomplete-category'>" + item.category + "</li>");
                        currentCategory = item.category;
                    }
                    li = that._renderItemData(ul, item);
                    if (item.category) {
                        li.attr("aria-label", item.category + " : " + item.label);
                    }
                });
            }
        });
    </script>
    <script>
        $(function () {
            var data = [
                {label: "Lily", category: "Annual"},
                {label: "Supertunia", category: "Annual"},
                {label: "Hydrangea", category: "Annual"},
                {label: "Gardening", category: "Books"},
                {label: "Fiskars", category: "Tools"}
            ];

            $("#search").catcomplete({
                delay: 0,
                source: data
            });
        });
    </script>



<body>
    <!--    <div>-->
    <section id="main_container">
        <div id="header">
            <div id="logo"> <a href="index.jsp"><img src="<c:url value='/image/logo.png'/>" alt="Gaia's plant world" border="0" width="290"/></a> </div>
            <section id="header_box">
                <a class="XXX" href="<c:url value='/admin/index.jsp'/>"><input type="button" value="Admin"></a>
                <a class="XXX" href="<c:url value='/cart/cart.jsp' />"><input type="button" value="Cart"></a>
                    <c:choose>
                        <c:when test="${login == null}">
                        <form class="XXX" method="POST" action="<c:url value='/customer/login'/>">
                            <input type="submit" value="Login">
                        </form>                        
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
            <input id="search" class="input" type="text" name="keyword" placeholder="Enter keywords">
            <input class="searchButton" type="submit" value="Search">
        </form>
    </div>

