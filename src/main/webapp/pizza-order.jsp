<%--
  Created by IntelliJ IDEA.
  User: Miguel.Gutierrez
  Date: 5/24/23
  Time: 12:15 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<head>
    <title>Pizza Order Form</title>
</head>
<body>
<h1>Pizza Order Form</h1>
<form action="/pizza-order" method="post">
    <label for="crust">Crust Type:</label>
    <select name="crust" id="crust">
        <option value="thin">Thin Crust</option>
        <option value="thick">Thick Crust</option>
        <option value="stuffed">Stuffed Crust</option>
    </select>
    <br>

    <label for="sauce">Sauce Type:</label>
    <select name="sauce" id="sauce">
        <option value="tomato">Tomato Sauce</option>
        <option value="bbq">BBQ Sauce</option>
        <option value="ranch">Ranch Sauce</option>
    </select>
    <br>

    <label for="size">Size Type:</label>
    <select name="size" id="size">
        <option value="small">Small</option>
        <option value="medium">Medium</option>
        <option value="large">Large</option>
    </select>
    <br>

    <label for="toppings">Toppings:</label>
    <input type="checkbox" name="toppings" id="toppings" value="pepperoni"> Pepperoni
    <input type="checkbox" name="toppings" value="mushrooms"> Mushrooms
    <input type="checkbox" name="toppings" value="onions"> Onions
    <input type="checkbox" name="toppings" value="sausage"> Sausage
    <br>

    <label for="address">Delivery Address:</label>
    <input type="text" name="address" id="address">
    <br>

    <input type="submit" value="Submit">
</form>
</body>
</html>
