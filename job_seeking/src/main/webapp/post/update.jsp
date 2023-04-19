<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/18/2023
  Time: 12:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post">
    Mã bài đăng :<input type="hidden" name="id" id="id" value="${post.getIdPost()}">
    Tiêu đề :<input type="text" name="postTitle" id="postTitle" value="${post.getPostTitle()}">
    Nội dung :<input type="text" name="describe" id="describe" value="${post.getDescribe()}">
    Ngày đăng :<input type="text" name="dateSubmitted" id="dateSubmitted" value="${post.getDateSubmitted()}">
    Hình ảnh :<input type="file" name="img" id="img" value="${post.getImg()}">
    <button type="submit">Cập Nhật</button>
</form>
</body>
</html>
