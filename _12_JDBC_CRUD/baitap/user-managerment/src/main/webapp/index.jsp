
<%--
  Created by IntelliJ IDEA.
  User: Bin
  Date: 02/12/2021
  Time: 1:49 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
<table border="1">
  <a href="/users?actionUser=sort">Sort By Name</a><br>
  <a href="/users?actionUser=find">Find By Country</a>
  <tr>
    <td>ID</td>
    <td>Name</td>
    <td>Email</td>
    <td>Country</td>
  </tr>
  <c:forEach var="user" items="${userListServlet}">
    <tr>
      <td><c:out value="${user.id}"/></td>
      <td><c:out value="${user.name}"/></td>
      <td><c:out value="${user.email}"/></td>
      <td><c:out value="${user.country}"/></td>
    </tr>
  </c:forEach>
</table>
  </body>
</html>
