<%--
  Created by IntelliJ IDEA.
  User: Miguel.Gutierrez
  Date: 5/24/23
  Time: 1:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Order Confirmation</title>
</head>
<body>
<h1>Pizza Order Confirmation</h1>
<p>Crust: <%= request.getAttribute("crust") %></p>
<p>Sauce: <%= request.getAttribute("sauce") %></p>
<p>Size: <%= request.getAttribute("size") %></p>
<p>Toppings:
    <% String[] toppings = (String[]) request.getAttribute("toppings");
        if (toppings != null) {
            for (String topping : toppings) {
                out.println(topping + "<br>");
            }
        }
    %>
</p>
<p>Delivery Address: <%= request.getAttribute("address") %></p>
</body>
</html>
