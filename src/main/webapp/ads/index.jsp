<%--
  Created by IntelliJ IDEA.
  User: Miguel.Gutierrez
  Date: 5/24/23
  Time: 2:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ads</title>
</head>
<body>
    <h1>Ads</h1>
    <c:forEach items="${allAds}" var="ad">
     <h1>${ad.id}</h1>
     <h2>${ad.title}</h2>
     <p>${ad.description}</p>
    </c:forEach>
</body>
</html>



