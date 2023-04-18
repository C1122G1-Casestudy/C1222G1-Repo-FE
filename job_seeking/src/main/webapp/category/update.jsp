<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 4/17/2023
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post">
    <label>ID</label>
    <input type="number" name="id" value="${category.getIdCategory()}">

    <label>Post</label>
    <input type="text" name="post" value="${category.getPostCategory()}">

    <input type="submit" value="submit">
</form>
</body>
</html>
