<%--
  Created by IntelliJ IDEA.
  User: Miguel.Gutierrez
  Date: 5/24/23
  Time: 12:15 PM
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>View Color</title>
    <style>
        body {
            background-color: <%= request.getParameter("color") %>;
        }
    </style>
</head>
<body>
<h1>Your Favorite Color</h1>
<p>Color: <%= request.getParameter("color") %></p>
</body>
</html>