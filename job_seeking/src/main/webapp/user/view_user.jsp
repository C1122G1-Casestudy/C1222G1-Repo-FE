<%--
  Created by IntelliJ IDEA.
  User: anhda
  Date: 4/7/2023
  Time: 11:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <style>
        body{
            font-family: Arial, Tahoma;
            font-size: 12px;
        }

        #main{
            width: 1000px;
            padding: 0;
            margin-left: auto;
            margin-right: auto;
        }

        #head{
            height: 100px;
            background-color: #F5F5F5;
            border: 1px solid #CDCDCD;
            margin-bottom:5px;
        }

        #head-link{
            height: 30px;
            line-height: 30px;
            padding-left: 10px;
            padding-right: 10px;
            border: 1px solid #CDCDCD;
            background-color: #F5F5F5;
            margin-bottom:5px;
            clear: both;
        }

        #left{
            width: 150px;
            min-height: 400px;
            border: 1px solid #CDCDCD;
            float:left;
            background-color: #004C00;
            margin-bottom: 5px;
        }

        #content{
            width: 600px;
            min-height: 400px;
            border: 1px solid #CDCDCD;
            float:left;
            margin-left: 5px;
            margin-right: 5px;
            margin-bottom: 5px;
        }

        #right{
            width: 234px;
            min-height: 400px;
            border: 1px solid #CDCDCD;
            float:right;
            margin-bottom: 5px;
        }

        #footer{
            height: 50px;
            clear: both;
            border: 1px solid #CDCDCD;
            background-color: #F8F8FF;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        p {
            line-height: 1.5;
            color: #666;
        }
        ul {
            list-style: none;
            padding: 0;
        }
        li {
            margin-bottom: 10px;
        }
        .label {
            display: inline-block;
            width: 100px;
            font-weight: bold;
        }
        .value {
            display: inline-block;
        }
    </style>
</head>
<body>
<%--<table class="table">--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <li>Tên</li>--%>
<%--        <li>Số điện thoại</li>--%>
<%--        <li>Bài đăng</li>--%>
<%--        <li>Mô tả</li>--%>
<%--        <li>Ngày đăng</li>--%>
<%--        <li>Hình ảnh</li>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <tr>--%>
<%--        <td>${user.getUserName()}</td>--%>
<%--        <td>${user.getPhoneNumber()}</td>--%>
<%--        <td>${user.getPostTitle()}</td>--%>
<%--        <td>${user.getDescribe()}</td>--%>
<%--        <td>${user.getDateSubmitted()}</td>--%>
<%--        <td><img src="${user.getImg()}"></td>--%>
<%--    </tr>--%>

<%--    </tbody>--%>
<%--</table>--%>
<div id="main">
    <div id="head">
    </div>
    <div id="head-link">
    </div>
    <div id="left">
    </div>
    <div id="content">
        <li>Tên: <p>${user.getUserName()}</p> </li>
        <li>Số điện thoại: <p>${user.getPhoneNumber()}</p> </li>
        <li>Bài đăng: <p>${user.getPostTitle()}</p></li>
        <li>Mô tả: <p>${user.getDescribe()}</p></li>
        <li>Ngày đăng: <p>${user.getDateSubmitted()}</p></li>
        <li>Hình ảnh: <p><img src="${user.getImg()}"></p></li>
    </div>
    <div id="right">
    </div>
    <div id="footer">
    </div>
</div>
<ul>
    <li>Tên: <p>${user.getUserName()}</p> </li>
    <li>Số điện thoại: <p>${user.getPhoneNumber()}</p> </li>
    <li>Bài đăng: <p>${user.getPostTitle()}</p></li>
    <li>Mô tả: <p>${user.getDescribe()}</p></li>
    <li>Ngày đăng: <p>${user.getDateSubmitted()}</p></li>
    <li>Hình ảnh: <p><img src="${user.getImg()}"></p></li>
</ul>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
