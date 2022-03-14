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
    <title>Tao mới Nhân viên</title>
</head>
<body>
<h1>Tạo mới nhân viên</h1>
<form action="/employees" method="post">
    <input type="hidden" name="actionEmployee" value="create">
    <table>
        <tr>
            <td>Mã nhân viên: </td>
            <td>
                <input type="text" name="id">
            </td>
        </tr>
        <tr>
            <td>Tên Nhân viên: </td>
            <td>
                <input type="text" name="name">
            </td>
        </tr>
        <tr>
            <td>Ngày sinh: </td>
            <td>
                <input type="text" name="birthday">
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
            <td>Lương: </td>
            <td>
                <input type="text" name="salary">
            </td>
        </tr>
        <tr>
            <td>Mã vị trí: </td>
            <td>
                <input type="text" name="positionId">
            </td>
        </tr>
        <tr>
            <td>Mã trình độ: </td>
            <td>
                <input type="text" name="educationDegreeId">
            </td>
        </tr>
        <tr>
            <td>Mã bộ phận: </td>
            <td>
                <input type="text" name="divisionId">
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
