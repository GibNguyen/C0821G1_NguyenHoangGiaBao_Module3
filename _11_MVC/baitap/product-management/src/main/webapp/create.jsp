<%--
  Created by IntelliJ IDEA.
  User: Bin
  Date: 01/12/2021
  Time: 3:11 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Create New Product</h2>
<form method="post" action="/product_list">
    <input type="hidden" name="actionUser" value="create">
    <div>ID: </div>
    <div>
        <input type="text" name="idCreate">
    </div>
    <div>Name: </div>
    <div>
        <input type="text" name="nameCreate">
    </div>
    <div>Price: </div>
    <div>
        <input type="text" name="priceCreate">
    </div>
    <div>Description: </div>
    <div>
        <input type="text" name="descriptionCreate">
    </div>
    <div>Producer: </div>
    <div>
        <input type="text" name="producerCreate">
    </div>
    <div>
        <input type="submit" value="Create new">
    </div>
</form>
</body>
</html>
