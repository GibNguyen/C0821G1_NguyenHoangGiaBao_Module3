<%--
  Created by IntelliJ IDEA.
  User: Bin
  Date: 13/12/2021
  Time: 10:12 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Edit Bệnh Nhân</h2>
<form  method="post">
    <input type="hidden" name="actionUser" value="edit">
    <div>
        Tên Bệnh Nhân
    </div>
    <div>
        <input type="text" name="editTenBenhNhan">
    </div>
    <div>
        Ngày Nhập Viện
    </div>
    <div>
        <input type="text" name="editNgayNhapVien">
    </div>
    <div>
        Ngày Ra Viện
    </div>
    <div>
        <input type="text" name="editNgayRaVien">
    </div>
    <div>
        Lý do Nhập viện
    </div>
    <div>
        <input type="text" name="editLyDo">
    </div>
    <div>
        <input type="submit" value="Edit">
    </div>
</form>
</body>
</html>
