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

   

</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th>Tên</th>
        <th>Số điện thoại</th>
        <th>Bài đăng</th>
        <th>Mô tả</th>
        <th>Ngày đăng</th>
        <th>Hình ảnh</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>${user.getUserName()}</td>
        <td>${user.getPhoneNumber()}</td>
        <td>${user.getPostTitle()}</td>
        <td>${user.getDescribe()}</td>
        <td>${user.getDateSubmitted()}</td>
        <td><img src="${user.getImg()}"></td>
    </tr>

    </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
