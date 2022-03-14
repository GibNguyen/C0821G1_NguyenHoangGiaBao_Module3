<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/12/2021
  Time: 2:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Chỉnh sửa thông tin khách hàng</title>
</head>
<body>
<h1>Chỉnh sửa thông tin khách hàng:</h1>
<h3>Thông tin khách hàng cần chỉnh sửa: </h3>
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
    </tr>
    <tr>
        <td><c:out value="${customer.id}" /></td>
        <td><c:out value="${customer.name}" /></td>
        <td><c:out value="${customer.birthDay}" /></td>

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
    </tr>
</table>
<h3>Nhập thông tin Khách hàng cần chỉnh sửa:</h3>
<form action="/customers" method="post">
    <input type="hidden" name="actionCustomer" value="edit">
    <table>
        <tr>
            <td>Mã KH: </td>
            <td>
                <input type="text" name="id">
            </td>
        </tr>
        <tr>
            <td>Tên KH: </td>
            <td>
                <input type="text" name="nameCustomer">
            </td>
        </tr>
        <tr>
            <td>Ngày sinh: </td>
            <td>
                <input type="text" name="birthday">
            </td>
        </tr>
        <tr>
            <td>Giới tính: </td>
            <td>
                <input type="radio" id="nam" name="gender" value="1">
                <label for="nam">Nam</label>
                <input type="radio" id="nu" name="gender" value="0">
                <label for="nu">Nữ</label>
            </td>
        </tr>
        <tr>
            <td>Giấy tờ tuỳ thân: </td>
            <td>
                <input type="text" name="identityCard">
            </td>
        </tr>
        <tr>
            <td>Số điện thoại: </td>
            <td>
                <input type="text" name="phoneNumber">
            </td>
        </tr>
        <tr>
            <td>Email: </td>
            <td>
                <input type="text" name="email">
            </td>
        </tr>
        <tr>
            <td>Địa chỉ: </td>
            <td>
                <input type="text" name="address">
            </td>
        </tr>
        <tr>
            <td>Loại khách hàng: </td>
            <td>
                <input type="text" name="typeId">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Sửa">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
