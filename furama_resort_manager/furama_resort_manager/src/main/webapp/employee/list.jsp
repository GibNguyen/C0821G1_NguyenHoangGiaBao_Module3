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
    <title>Employee Manager</title>
</head>
<body>
<h1>Trang hiển thị danh sách Nhân viên</h1>

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
        <th>Chức năng</th>
    </tr>
    <c:forEach var="employee" items="${employeeList}">
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
            <td>
                <a href="/employees?actionEmployee=edit&id=${employee.id}">
                    <button>Sửa</button>
                </a>
                <a href="/employees?actionEmployee=delete&id=${employee.id}" onclick="return confirm('Are you sure you want to delete this item?')">
                    <button>Xoá</button>
                </a>
            </td>
        </tr>
    </c:forEach>

</table>
<%--<c:out value="${msg}"/>--%>
<a href="/employees?actionEmployee=create"><button>Thêm mới</button></a>
<%--<a href="/user?actionUser=sort"><button>Sort</button></a>--%>
</body>
</html>
<%--<script>--%>
<%--    function deleteEmployee() {--%>
<%--        confirm("Bạn có muốn xoá Nhân viên này không?")--%>
<%--    }--%>
<%--</script>--%>