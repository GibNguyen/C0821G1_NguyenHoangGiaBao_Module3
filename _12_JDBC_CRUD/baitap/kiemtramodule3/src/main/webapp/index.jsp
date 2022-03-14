<%--
  Created by IntelliJ IDEA.
  User: Bin
  Date: 13/12/2021
  Time: 8:24 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h2>Danh sách bệnh án</h2>
  <table border="1">
    <tr>
      <th>Mã bệnh án</th>
      <th>Mã bệnh nhân</th>
      <th>Tên bệnh nhân</th>
      <th>Ngày nhập viện</th>
      <th>Ngày ra viện</th>
      <th>Lý do nhập viện</th>
      <th>Tác vụ</th>
    </tr>
    <c:forEach var="object" items="${benhnhanListServlet}">
      <tr>
        <td><c:out value="${object.maBenhAn}"></c:out></td>
        <td><c:out value="${object.maBenhNhan}"></c:out></td>
        <td><c:out value="${object.tenBenhNhan}"></c:out></td>
        <td><c:out value="${object.ngayNhapVien}"></c:out></td>
        <td><c:out value="${object.ngayRaVien}"></c:out></td>
        <td><c:out value="${object.lyDoNhapVien}"></c:out></td>
        <td><a href="/benhanServlet?actionUser=delete&idDelete=${object.maBenhNhan}" >Delete</a></td>
        <td><a href="/benhanServlet?actionUser=edit&idEdit=${object.maBenhNhan}">Edit</a></td>
      </tr>
    </c:forEach>
  </table>
  </body>
</html>
