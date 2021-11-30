<%--
  Created by IntelliJ IDEA.
  User: Bin
  Date: 30/11/2021
  Time: 10:37 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>$Title$</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form action="/calculator" method="get">
  <fieldset border="1">
    <legend>Calculator</legend>
    <table>
      <tr>
        <td>First Operand:</td>
        <td><input type="text" name="firstOperand"></td>
      </tr>
      <tr>
        <td>Operator:</td>
        <td>
          <select name="operator">
            <option value="additon">Additon</option>
            <option value="subtraction">Subtraction</option>
            <option value="multiplication">Multiplication</option>
            <option value="division">Division</option>
          </select>
        </td>
      </tr>
      <tr>
        <td>Second Operand:</td>
        <td><input type="text" name="secondOperand"></td>
      </tr>
      <tr>
        <td>
          <input type="submit" value="Calculator">
        </td>
      </tr>
    </table>
  </fieldset>
</form>

<h1>Result:</h1>
<%=request.getAttribute("display")%>

</body>
</html>
