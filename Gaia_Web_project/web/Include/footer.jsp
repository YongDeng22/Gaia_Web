<%-- 
    Document   : footer
    Created on : Jun 10, 2015, 10:17:33 PM
    Author     : zuo
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.GregorianCalendar, java.util.Calendar" %>
<%
    GregorianCalendar currentDate = new GregorianCalendar();
    int currentYear = currentDate.get(Calendar.YEAR);
%>
</div><!-- end of main_content -->
<footer>
    <div class="left_footer"> 
        <ul>
            <li><a href="<c:url value='/aboutUs.jsp'/>">About us</a></li>
            <li><a href="<c:url value='/under_const.html'/>">Our Guarantee</a></li>
            <li><a href="<c:url value='/under_const.html'/>">Terms & Conditions</a></li>
        </ul>
    </div>
    <div class="center_footer">MAILING ADDRESS:<br/> 300 Boston Post RD, New Haven, CT, 06516</div>
    <div class="right_footer"> 
        <div>NEED HELP?<br/> Customer Care: 800-XXX-XXXX<br/> Sale & Products: 800-XXX-XXXX</div><br/>
    </div>
    <br/><br/>
    <div class="copy_footer" >
        <p>Copyright&nbsp<%= currentYear%> &copy;&nbsp;Gaia's Plant World. </p>
        <p>All rights reserved. Design by Houqi Zuo, ZHe Wu and Yong Deng</p>
    </div>
</footer>
<!--</div>-->
</body>

</html>
