<%-- 
    Document   : footer
    Created on : Jun 10, 2015, 10:17:33 PM
    Author     : zuo
--%>

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
            <li><a href="#">About us</a></li>
            <li><a href="#">Our Guarantee</a></li>
            <li><a href="#">Terms & Conditions</a></li>
        </ul>
    </div>
    <div class="center_footer">MAILING ADDRESS:<br/> 300 Boston Post RD, New Haven, CT, 06516</div>
    <div class="right_footer"> 
        <div>NEED HELP?<br/> Customer Care: 800-XXX-XXXX<br/> Sale & Products: 800-XXX-XXXX</div><br/>
    </div>
    <br/><br/>
    <div class="copy_footer" >&copy;<%= currentYear%> Gaia's Plant World. All rights reserved. This website is design by XXX</div>
</footer>
</body>

</html>
