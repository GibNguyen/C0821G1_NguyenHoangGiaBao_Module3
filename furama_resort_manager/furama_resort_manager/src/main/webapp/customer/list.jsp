<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/12/2021
  Time: 8:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer Manager</title>
</head>
<body>
<h1>Trang hiển thị danh sách Khách hàng</h1>

<table border="1">
    <tr>
        <th>Mã Khách hàng</th>
        <th>Tên Khách hàng</th>
        <th>Ngày sinh</th>
        <th>Giới tính</th>
        <th>Giấy tờ tuỳ thân</th>
        <th>Số điện thoại</th>
        <th>Email</th>
        <th>Địa chỉ</th>
        <th>Mã loại khách</th>
        <th>Chức năng</th>
    </tr>
    <c:forEach var="customer" items="${customerList}">
        <tr>
            <td><c:out value="${customer.id}" /></td>
            <td><c:out value="${customer.name}" /></td>
            <td><c:out value="${customer.birthDay}" /></td>
<%--            <td><c:out value="${customer.gender}" /></td>--%>
            <td>
                <c:choose>
                    <c:when test="${customer.gender==0}" >
                        <p>Nữ</p>
                    </c:when>
                    <c:otherwise>
                        <p>Nam</p>
                    </c:otherwise>
                </c:choose>

            </td>
            <td><c:out value="${customer.identityCard}" /></td>
            <td><c:out value="${customer.phoneNumber}" /></td>
            <td><c:out value="${customer.email}" /></td>
            <td><c:out value="${customer.address}" /></td>
            <td><c:out value="${customer.typeId}" /></td>
            <td>
                <a href="/customers?actionCustomer=edit&id=${customer.id}">
                <button>Sửa</button>
            </a>
                <a href="/customers?actionCustomer=delete&id=${customer.id}" onclick="return confirm('Are you sure you want to delete this item?')">
                    <button>Xoá</button>
                </a>
            </td>
        </tr>
    </c:forEach>

</table>
<%--<c:out value="${msg}"/>--%>
<a href="/customers?actionCustomer=create"><button>Thêm mới</button></a>
<%--<a href="/customers?actionUser=sort"><button>Sort</button></a>--%>
</body>
</html>
