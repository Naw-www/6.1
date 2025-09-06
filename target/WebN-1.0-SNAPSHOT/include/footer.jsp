<%@ page import="java.util.Calendar, java.util.GregorianCalendar" %>
<%
    GregorianCalendar currentDate = new GregorianCalendar();
    int currentYear = currentDate.get(Calendar.YEAR);
%>
<div class="footer">
    <p>&copy; Copyright <%= currentYear %> Mike Murach &amp; Associates</p>
</div>
a