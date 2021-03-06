<%--
  Created by IntelliJ IDEA.
  User: Bin
  Date: 29/11/2021
  Time: 2:04 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách khách hàng</title>
</head>
<body>
<h2>Danh sách khách hàng</h2>
<table>
    <Tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </Tr>

    <c:forEach var="customerObj" items="${customerListServlet}">
        <tr>
            <td>
                <c:out value="${customerObj.name}"/>
            </td>
            <td>
                <c:out value="${customerObj.dateOfBirth}"/>
            </td>
            <td>
                <c:out value="${customerObj.address}"/>
            </td>
            <td>
                <img width="30px" height="30px" src="<c:out value="${customerObj.image}"/>"/>
                
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
