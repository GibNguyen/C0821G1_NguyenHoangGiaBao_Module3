<%--
  Created by IntelliJ IDEA.
  User: Bin
  Date: 02/12/2021
  Time: 11:25 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Edit Product</h2>
<form  method="post">
    <input type="hidden" name="actionUser">
    <div>
        Name
    </div>
    <div>
        <input type="text" name="nameEdit">
    </div>
    <div>
        Price
    </div>
    <div>
        <input type="text" name="priceEdit">
    </div>
    <div>
        Description
    </div>
    <div>
        <input type="text" name="descriptionEdit">
    </div>
    <div>
        Producer
    </div>
    <div>
        <input type="text" name="producerEdit">
    </div>
    <div>
        <input type="submit" value="Edit">
    </div>

</form>
</body>
</html>
