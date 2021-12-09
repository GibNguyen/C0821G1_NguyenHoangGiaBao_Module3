<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/7/2021
  Time: 9:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Add new Employee</h2>
<form  method="post">
    <input type="hidden" name="actionUser" value="create">
    <div>
        Employee ID
    </div>
    <div>
        <input type="text" name="employeeId">
    </div>
    <div>
        Employee Name
    </div>
    <div>
        <input type="text" name="employeeName">
    </div>
    <div>
        Employee Birthday
    </div>
    <div>
        <input type="text" name="employeeBirthDay">
    </div>
    <div>
        Employee ID Card
    </div>
    <div>
        <input type="text" name="employeeIdCard">
    </div>
    <div>
        Employee Salary
    </div>
    <div>
        <input type="text" name="employeeSalary">
    </div>
    <div>
        Employee Phone
    </div>
    <div>
        <input type="text" name="employeePhone">
    </div>
    <div>
        Employee Email
    </div>
    <div>
        <input type="text" name="employeeEmail">
    </div>
    <div>
        Employee Address
    </div>
    <div>
        <input type="text" name="employeeAdress">
    </div>
    <div>
        Employee possition Id
    </div>
    <div>
        <input type="text" name="employeePossitionId">
    </div>
    <div>
        Employee Education Degree Id
    </div>
    <div>
        <input type="text" name="employeeEducationDegreeId">
    </div>
    <div>
        Employee Division Id
    </div>
    <div>
        <input type="text" name="employeeDivisionId">
    </div>
    <div>
        <input type="submit" value="Add">
    </div>
</form>
</body>
</html>
