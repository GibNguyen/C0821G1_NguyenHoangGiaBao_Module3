<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/12/2021
  Time: 8:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tao mới Khách hàng</title>
</head>
<body>
<h1>Tạo mới khách hàng</h1>
<form action="/customers" method="post">
    <input type="hidden" name="actionCustomer" value="create">
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
                <input type="submit" value="Create">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
