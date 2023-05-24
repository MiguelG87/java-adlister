<%--
  Created by IntelliJ IDEA.
  User: Miguel.Gutierrez
  Date: 5/24/23
  Time: 2:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import=".Ad" %>
<%@ page import="your.package.name.ListAdsDao" %>

<%
    List<Ad> ads = ListAdsDao.all();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Ads Index</title>
</head>
<body>
<h1>All Ads</h1>
<ul>
    <% for (Ad ad : ads) { %>
    <li>
        <h3><%= ad.getTitle() %></h3>
        <p><%= ad.getDescription() %></p>
    </li>
    <% } %>
</ul>
</body>
</html>
