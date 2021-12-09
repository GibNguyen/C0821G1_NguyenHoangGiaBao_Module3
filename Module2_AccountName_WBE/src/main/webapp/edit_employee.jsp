<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/7/2021
  Time: 2:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Edit Employee</h2>
<form  method="post">
    <input type="hidden" name="actionUser" value="edit">
    <div>
        Employee Name
    </div>
    <div>
        <input type="text" name="editName">
    </div>
    <div>
        Employee Birthday
    </div>
    <div>
        <input type="text" name="editBirthDay">
    </div>
    <div>
        Employee ID Card
    </div>
    <div>
        <input type="text" name="editIdCard">
    </div>
    <div>
        Employee Salary
    </div>
    <div>
        <input type="text" name="editSalary">
    </div>
    <div>
        Employee Phone
    </div>
    <div>
        <input type="text" name="editPhone">
    </div>
    <div>
        Employee Email
    </div>
    <div>
        <input type="text" name="editEmail">
    </div>
    <div>
        Employee Address
    </div>
    <div>
        <input type="text" name="editAdress">
    </div>
    <div>
        Employee possition Id
    </div>
    <div>
        <input type="text" name="editPossitionId">
    </div>
    <div>
        Employee Education Degree Id
    </div>
    <div>
        <input type="text" name="editEducationDegreeId">
    </div>
    <div>
        Employee Division Id
    </div>
    <div>
        <input type="text" name="editDivisionId">
    </div>
    <div>
        <input type="submit" value="Edit">
    </div>
</form>
</body>
</html>
