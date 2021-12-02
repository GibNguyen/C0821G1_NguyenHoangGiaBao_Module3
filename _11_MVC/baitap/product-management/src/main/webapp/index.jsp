<%--
  Created by IntelliJ IDEA.
  User: Bin
  Date: 30/11/2021
  Time: 11:08 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h2>List Product</h2>
<a href="/product_list?actionUser=create">Create new Product</a>
<a href="/product_list?actionUser=find">Find Product</a>
<table border="1">
  <tr>
    <th>Id</th>
    <th>Name</th>
    <th>Price</th>
    <th>Description</th>
    <th>Producer</th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>
  <c:forEach var="productObj" items="${productListServlet}" >
  <tr>
    <td><c:out value="${productObj.id}"/></td>
    <td><c:out value="${productObj.name}"/></td>
    <td><c:out value="${productObj.price}"/></td>
    <td><c:out value="${productObj.description}"/></td>
    <td><c:out value="${productObj.producer}"/></td>
    <td><a href="/product_list?actionUser=edit&idEdit=${productObj.id}">Edit</a></td>
    <td><a href="/product_list?actionUser=delete&idDelete=${productObj.id}">Delete</a></td>
  </tr>
  </c:forEach>
</table>
</body>
</html>