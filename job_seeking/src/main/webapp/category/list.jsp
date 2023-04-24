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
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>Admin</title>
</head>
<body>
<div class="container">
    <div class="header">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand fw-bold" href="/post">HOME</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <button style="margin: 5px" class="btn btn-secondary" onclick="window.location.href = '/categoryServlet?actionCategory=create'">Tạo thể loại mới</button>
    <div class="main" style="padding: 100px 0">
        <table id="example" class="table table-striped" style="width:100%" border="1px">
            <thead>
            <tr>
                <th>STT</th>
                <th>Mã thể loại</th>
                <th>Loại bài đăng </th>
                <th></th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${listCategory}" var="category" varStatus="no">
                <tr>
                    <td scope="row">${no.count}</td>
                    <td>${category.idCategory}</td>
                    <td>${category.postCategory}</td>

                    <td>
                        <button onclick="window.location.href = '/categoryServlet?actionCategory=update&id=${category.idCategory}'"
                                class="btn btn-primary">Chỉnh sửa
                        </button>
                    <td>
                        <button style="font-size: 15px" onclick="changIdDelete(${category.getIdCategory()} , '${category.getPostCategory()}')"
                                type="button" class="btn btn-danger btn-lg" data-bs-toggle="modal"
                                data-bs-target="#modelId">
                            Xóa
                        </button>
                    </td>

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
    </div>
</div>
</body>
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
    function changIdDelete(id, post) {
        document.getElementById("idDelete").value = id;
        document.getElementById("post").innerText = post;
    }

    let table = $('#example').DataTable();
</script>
</html>
