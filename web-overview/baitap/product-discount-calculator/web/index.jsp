<%--
  Created by IntelliJ IDEA.
  User: Bin
  Date: 28/11/2021
  Time: 8:21 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Discount Calculator</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<form action="/calculator" method="get">
    <label>Product Description</label><br>
    <input type="text" name="description"><br>
    <label>List Price</label><br>
    <input type="text" name="price"><br>
    <label>Discount Percent</label><br>
    <input type="text" name="discountPercent"><br>
    <input type="submit" id="submit" value="Calculator"/>
</form>
</body>
</html>
