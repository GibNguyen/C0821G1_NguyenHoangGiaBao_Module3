<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/6/2021
  Time: 2:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Furama Resort Managerment</title>
  <link rel="stylesheet" href="webapp\css\bootstrap.min.css">
  <style>
    * {
      box-sizing: border-box;
    }

    .col-1 {
      width: 8.33%
    }

    .col-2 {
      width: 16.66%
    }

    .col-3 {
      width: 25%
    }

    .col-4 {
      width: 33.33%
    }

    .col-5 {
      width: 41.66%
    }

    .col-6 {
      width: 50%
    }

    .col-7 {
      width: 58.33%
    }

    .col-8 {
      width: 66.66%
    }

    .col-9 {
      width: 75%
    }

    .col-10 {
      width: 83.33%
    }

    .col-11 {
      width: 91.66%
    }

    .col-12 {
      width: 100%
    }

    [class*=col-] {
      float: left;
      padding: 5px;
    }

    .row::after {
      clear: both;
      content: "";
      display: block;
    }


    @media only screen and (max-width: 786px) {
      [class*= col-] {
        width: 100%;
      }
    }
    .header {
      padding-top: 40px;
      background-color: #CDCDCD;
      height: 100px;
      border: #1a1e21 1px;
    }
    .header-left {
      text-align: left;
    }
    .header-right {
      text-align: right;
    }
    .menu {
      padding-top: 10px;
      background-color: #bacbe6;
      height: 50px;
      text-align: center;
      border: #1a1e21 1px;
    }
    .menu-title {
      padding: 10px 20px;
    }
    .body {
      margin-top: 0px;
      border: #1a1e21 1px;
      height: 500px;

    }
    .body-left {
      float: left;
      background-color: #25cff2;
    }
    .body-right {
      float: left;
      background-color: mediumslateblue;
      text-align: center;
    }
    .footer{
      background-color: #bacbe6;
      height: 50px;
      text-align: center;
      clear: left;
    }
  </style>
</head>
<body>
<div class="row header">
  <div class="col-6 header-left">
    <span>Logo</span>
  </div>
  <div class="col-6 header-right">
    <span>Nguyễn Hoàng Gia Bảo</span>
  </div>
</div>

<div class="row menu">
  <div class="col-8 menu-left">
    <span class="menu-title">Home</span>
    <a href="/employeeServlet?actionUser=employee"><span class="menu-title">Employee</span></a>
    <span class="menu-title">Customer</span>
    <span class="menu-title">Service</span>
    <span class="menu-title">Contract</span>
  </div>
  <div class="col-4 menu-right">
    <form>
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
      </svg>
      <input placeholder="search">
    </form>
  </div>
</div>
<div class="row body">

  <div class="col-3 body-left">


  </div>
  <div class="col-9 body-right">
    <p>Body....</p>

  </div>

</div>
<div class="row footer">
  <div class="col-12">
    <p>Footer....</p>
  </div>

</div>
</body>
</html>
