<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 4/17/2023
  Time: 10:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Title</title>
    <script src="https://kit.fontawesome.com/yourcode.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<button class="btn btn-primary" onclick="window.location.href = '/categoryServlet?actionCategory=create'">Tạo thể loại mới</button>
<form action="/categoryServlet">
<div class="input-group mb-3" >
    <input  type="search" name="search" class="form-control" placeholder="Enter Name" aria-label="Recipient's username" aria-describedby="button-addon2">
    <input type="hidden" name="actionCategory" value="search">
    <button  class="btn btn-outline-secondary" type="submit" >
        <i class="fa-duotone fa-magnifying-glass fa-2xs"></i>Tìm kiếm</button>
</div>
</form>
<table class="table" border="1px">
    <thead>
    <tr>
        <th>STT</th>
        <th>Mã thể loại</th>
        <th>Thể Loại bài đăng</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="category" items="${listCategory}" varStatus="no">
        <tr>
            <td scope="row">${no.count}</td>
            <td>${category.idCategory}</td>
            <td>${category.postCategory}</td>
            <td>
                <button onclick="window.location.href = '/categoryServlet?actionCategory=update&id=${category.idCategory}'"
                        class="btn btn-primary">Chỉnh sửa
                </button>
            </td>
            <td>
                <button onclick="changIdDelete(${category.getIdCategory()} , '${category.getPostCategory()}')"
                        type="button" class="btn btn-danger btn-lg" data-bs-toggle="modal" data-bs-target="#modelId">
                    Xóa
                </button>
            </td>

        </tr>

    </c:forEach>
    </tbody>
</table>

<div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="modelTitleId"></h4>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Bạn có muốn xóa thể loại <span id="post" style="color: red"></span>?
            </div>
            <div class="modal-footer">
                <form action="/categoryServlet">
                    <input type="hidden" value="delete" name="actionCategory">
                    <input type="hidden" id="idDelete" name="idDelete">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    function changIdDelete(id, post) {
        document.getElementById("idDelete").value = id;
        document.getElementById("post").innerText = post;
    }

</script>
</html>
