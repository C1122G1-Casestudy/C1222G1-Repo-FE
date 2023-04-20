<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/17/2023
  Time: 11:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="../bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="../bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>

    <style>
        span {
            color: red;
            display: block;
            padding: 5px 0px;
        }
    </style>

</head>
<body>
<h1 class="text-center">Create new post</h1>
<h4 class="text-center"><a href="/PostServlet">Back</a></h4>
<h3 class="text-center">
    <c:if test="${message != null}">
        <h3 class="text-center" style="color: coral">${message}</h3>
    </c:if>
</h3>
<form action="/post?action=create"  method="post">
    <tr>
        <td>Nhập mã bài đăng:</td>
        <td>
            <input type="number" name="idPost" id="idPost" value=""/>
        </td>
    </tr>
    <tr>
        <td>Nhập tên tiêu đề:</td>
        <td>
            <input type="text" name="postTitle" id="postTitle" value=""/>
        </td>
    </tr>
    <tr>
        <td>Nhập nội dung:</td>
        <td>
            <textarea type="text" name="describe" id="describe" value=""></textarea>
        </td>
    </tr>
    <tr>
        <td>Nhập ngày đăng:</td>
        <td>
            <input type="date" id="dateSubmitted" name="dateSubmitted" value=""/>
        </td>
    </tr>
    <tr>
        <td>Hình ảnh:</td>
        <td>
<%--            <lable for="file-upload">Chọn tệp:</lable>--%>
            <input type="text" id="img" name="img">
        </td>
    </tr>
    <tr>
        <td>Chọn thể loại:</td>
        <select name="idCategory" >
            <c:forEach  items="${categoryList}" var="category">
                <option value="${category.idCategory}">
                    ${category.postCategory}
                </option>
            </c:forEach>
        </select>
    </tr>
    <tr>
        <td>
            <button type="submit" class="btn btn-primary">Submit</button>
        </td>
    </tr>
</form>
</body>
</html>
