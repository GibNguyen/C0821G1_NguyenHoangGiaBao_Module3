<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/6/2021
  Time: 3:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Employee</h2>
<a href="/employeeServlet?actionUser=create">Add Employee</a>
<table border="1">
    <tr>
        <th>Employee ID</th>
        <th>Employee Name</th>
        <th>Employee Birthday</th>
        <th>Employee Id Card</th>
        <th>Employee Salary</th>
        <th>Employee Phone</th>
        <th>Employee Email</th>
        <th>Employee Address</th>
        <th>Possition ID</th>
        <th>Education Degree ID</th>
        <th>Division ID</th>
    </tr>
    <c:forEach var="object" items="${employeeListServlet}">
        <tr>
            <td><c:out value="${object.employeeId}"></c:out></td>
            <td><c:out value="${object.employeeName}"></c:out></td>
            <td><c:out value="${object.employeeBirthday}"></c:out></td>
            <td><c:out value="${object.employeeIdCard}"></c:out></td>
            <td><c:out value="${object.employeeSalary}"></c:out></td>
            <td><c:out value="${object.employeePhone}"></c:out></td>
            <td><c:out value="${object.employeeEmail}"></c:out></td>
            <td><c:out value="${object.employeeAdress}"></c:out></td>
            <td><c:out value="${object.possitionId}"></c:out></td>
            <td><c:out value="${object.educationDegreeId}"></c:out></td>
            <td><c:out value="${object.divisionId}"></c:out></td>
            <th><a href="/employeeServlet?actionUser=delete&idDelete=${object.employeeId}" >Delete</a></th>
            <th><a href="/employeeServlet?actionUser=edit&idEdit=${object.employeeId}">Edit</a></th>
        </tr>
    </c:forEach>
</table>
</body>
</html>
