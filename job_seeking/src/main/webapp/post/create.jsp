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
    <!-- Bootstrap CSS -->
    <%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"--%>
    <%--          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">--%>
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
<form class="container-md" action="/post?action=create" method="post">
    <tr>
        <td>Nhập tên tiêu đề:</td>
        <td>
            <input type="text" id="name" value=""/>
            <span id="name_error"></span>
        </td>
    </tr>
    <tr>
        <td>Nhập nội dung:</td>
        <td>
            <input type="text" id="describe" value=""/>
            <span id="describe_error"></span>
        </td>
    </tr>
    <tr>
        <td>Nhập ngày đăng:</td>
        <td>
            <input type="date" id="date" value=""/>
            <span id="date_error"></span>
        </td>
    </tr>
    <tr>
        <td>
            <lable for="file-upload">Chọn tệp:</lable>
            <input type="file" id="file_upload">
        </td>
    </tr>
    <tr>
        <td>
            <%-- <input type="submit" onclick="return validate();" id="btn" name="btn" value="Nộp">--%>
            <button type="button" onclick="validate()" class="btn btn-primary">Submit</button>
        </td>
    </tr>
</form>
</body>
<script>
    // lấy giá trị của 1 input
    function getValue(id) {
        return document.getElementById(id).value.trim();
    }

    //hiển thị lỗi
    function showError(key, mess) {
        document.getElementById(key + '_error').innerHTML = mess;
    }

    function validate() {
        var flag = true;

        // tên tiêu đề
        var name = getValue('name');
        if (name == "" || !/^[a-zA-Z0-9]+$/.test(name)) {
            flag = false;
            showError('name', 'Vui lòng kiểm tra lại tên tiêu đề vừa nhập!');
        }
        //nội dung
        var describe = getValue('describe');
        if (describe == "" || !/^[a-zA-Z0-9]{1,600}$/.test(describe)) {
            flag = false;
            showError('describe', 'Vui lòng kiểm tra lại phần nội dung!');
        }
        //ngày đăng
        var date = getValue('date');
        if (date == "" || !/^$/.test(date)) {
            flag = false;
            showError('date', 'Vui lòng kiểm tra lại ngày đăng!');
        }
    }
</script>
</html>
