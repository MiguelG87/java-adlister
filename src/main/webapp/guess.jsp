<%--
  Created by IntelliJ IDEA.
  User: Miguel.Gutierrez
  Date: 5/24/23
  Time: 2:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Guess a Number</title>
</head>
<body>
<h1>Guess a Number</h1>
<form action="guess" method="post">
  <label for="guess">Guess a number between 1 and 3:</label>
  <input type="number" name="guess" id="guess" min="1" max="3">
  <br>
  <input type="submit" value="Submit">
</form>
</body>
</html>
