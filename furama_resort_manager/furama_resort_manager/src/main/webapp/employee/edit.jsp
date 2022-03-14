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
    <title>Chỉnh sửa thông tin nhân viên</title>
</head>
<body>
<h1>Chỉnh sửa thông tin nhân viên:</h1>
<h3>Thông tin nhân viên cần chỉnh sửa: </h3>
<table border="1">
    <tr>
        <th>Mã Nhân viên</th>
        <th>Tên Nhân viên</th>
        <th>Ngày sinh</th>
        <th>Giấy tờ tuỳ thân</th>
        <th>Số điện thoại</th>
        <th>Email</th>
        <th>Địa chỉ</th>
        <th>Lương</th>
        <th>Mã vị trí</th>
        <th>Mã ngành</th>
        <th>Mã bộ phận</th>
    </tr>
    <tr>
        <td><c:out value="${employee.id}" /></td>
        <td><c:out value="${employee.name}" /></td>
        <td><c:out value="${employee.birthDay}" /></td>
        <td><c:out value="${employee.identityCard}" /></td>
        <td><c:out value="${employee.phoneNumber}" /></td>
        <td><c:out value="${employee.email}" /></td>
        <td><c:out value="${employee.address}" /></td>
        <td><c:out value="${employee.salary}" /></td>
        <td><c:out value="${employee.positionId}" /></td>
        <td><c:out value="${employee.educationDegreeId}" /></td>
        <td><c:out value="${employee.divisionId}" /></td>
    </tr>
</table>
<h3>Nhập thông tin nhân viên cần chỉnh sửa:</h3>
<form action="/employees" method="post">
    <input type="hidden" name="actionEmployee" value="edit">
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
                <input type="submit" value="Sửa">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
