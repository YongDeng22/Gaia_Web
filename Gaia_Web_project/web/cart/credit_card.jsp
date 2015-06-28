<!--@author: Yong Deng
@since: 6-26-2015-->

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
            <li class="odd"><a href="<c:url value='/annuals.jsp'/>">Annuals</a></li>
            <li class="even"><a href="<c:url value='/under_const.html'/>">Shrubs</a></li>
            <li class="odd"><a href="<c:url value='/under_const.html'/>">Trees</a></li>
            <li class="even"><a href="<c:url value='/under_const.html'/>">Fruit Plants</a></li>
            <li class="odd"><a href="<c:url value='/under_const.html'/>">House Plants</a></li>
            <li class="even"><a href="<c:url value='/under_const.html'/>">Perennials</a></li>
            <li class="odd"><a href="<c:url value='/tools.jsp'/>">Garden Tools</a></li>
            <li class="even"><a href="<c:url value='/books.jsp'/>">Books</a></li>
            <li class="odd"><a href="<c:url value='/under_const.html'/>">DVDs</a></li>
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
        <!--    <div class="title_box">Newsletter</div>
            <div class="border_box">
                <input type="text" name="newsletter" class="newsletter_input" value="your email"/>
                <a href="#" class="join">join</a> </div>-->
    </div>

    <section class="card-section">

        <h3>Enter your credit card information</h3>

        <form action="<c:url value='/checkout/completeOrder' />" method="POST">
            <table>
                <tr> 
                    <td><b>Credit card type</b></td>
                    <td>
                        <select name="creditCardType" size="1">
                            <option value="Visa">Visa</option>
                            <option value="Mastercard">Mastercard</option>
                            <option value="AmEx">American Express</option>
                        </select>
                    </td>
                </tr>
                <tr> 
                    <td><b>Card number</b></td>
                    <td><input type="text" size="20" name="creditCardNumber" 
                               maxlength="25" required></td>
                </tr>
                <tr> 
                    <td><b>Expiration date (mm/yy)</b></td>
                    <td><select name="creditCardExpirationMonth">
                            <option value="01">01</option>
                            <option value="02">02</option>
                            <option value="03">03</option>
                            <option value="04">04</option> 
                            <option value="05">05</option>
                            <option value="06">06</option>
                            <option value="07">07</option>
                            <option value="08">08</option> 
                            <option value="09">09</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option> 
                        </select>

                        <select name="creditCardExpirationYear">
                            <option value="2015">15</option>
                            <option value="2016">16</option>
                            <option value="2017">17</option>
                            <option value="2018">18</option> 
                            <option value="2019">19</option>
                            <option value="2020">20</option>
                            <option value="2021">21</option>
                            <option value="2022">22</option>
                        </select>
                    </td>
                </tr>
                <tr> 
                    <td><b>Card Holder</b></td>
                    <td><input type="text" size="20" name="cardHolder" 
                               maxlength="25" required></td>
                </tr>
                                <tr> 
                    <td><b>Address</b></td>
                    <td><input type="text" size="20" name="cardAddress" 
                               maxlength="25" required></td>
                </tr>
                                <tr> 
                    <td><b>CVV code</b></td>
                    <td><input type="text" size="20" name="cvvCode" 
                               maxlength="25" required></td>
                </tr>
            </table>

            <input type="submit" value="Submit Order">
        </form>

    </section>

    <!-- end middle column -->

    <jsp:include page="/Include/footer.jsp" />