<%--
  Created by IntelliJ IDEA.
  User: anhda
  Date: 4/7/2023
  Time: 11:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap5.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/@sweetalert2/theme-dark@4/dark.css" rel="stylesheet">

</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand" href="/post"><img style="width: 100px;height: 100px"
                                                              src="https://www.shutterstock.com/image-vector/job-searching-icon-260nw-1224749530.jpg"
                                                              alt=""></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="/user">Danh sách người dùng</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/categoryServlet">Thể loại</a>
                            </li>
                        </ul>
                        <form class="d-flex">
                            <input type="hidden" name="action" value="searchByName">
                            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"
                                   name="nameToSearch">
                            <button class="btn btn-outline-success" type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </nav>

            <div id="content">
                <table id="tableStudent" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                    <tr>
                        <th>STT</th>
                        <th>Tên</th>
                        <th>Email</th>
                        <th>Số điện thoại</th>
                        <th></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="user" items="${userList}" varStatus="count">
                        <tr>
                            <td scope="row"><c:out value="${count.count}"></c:out></td>
                            <td><c:out value="${user.getUserName()}"></c:out></td>
                            <td><c:out value="${user.getEmail()}"></c:out></td>
                            <td><c:out value="${user.getPhoneNumber()}"></c:out></td>
                            <td><a href="/user?action=update&idToUpdate=${user.getId()}"
                                   role="button"><img
                                    src="https://banner2.cleanpng.com/20180417/eeq/kisspng-computer-icons-editing-icon-design-random-icons-5ad5ac7df28c06.7497951515239527659935.jpg"
                                    width="20px" height="20px"></a></td>
                            <td>
                                <button onclick="deleteByName('${user.getUserName()}',${user.getId()})" type="button"
                                        data-bs-toggle="modal" data-bs-target="#modelId">
                                    <img src="https://png.pngtree.com/png-vector/20190916/ourlarge/pngtree-trash-icon-for-your-project-png-image_1731152.jpg"
                                         width="20px" height="20px">
                                </button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- Button trigger modal -->
<!-- Modal -->
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
                Bạn có muốn xóa <span class="text-danger" id="nameToDelete"></span>
            </div>
            <div class="modal-footer">
                <form action="/user">
                    <input type="hidden" name="idToDelete" id="idToDelete">
                    <input type="hidden" name="action" value="delete">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                    <button type="submit" class="btn btn-danger">Xóa</button>
                </form>

            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        $('#tableStudent').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 7
        });
    });
</script>
<script>
    function deleteByName(name, id) {
        document.getElementById("nameToDelete").innerText = name;
        document.getElementById("idToDelete").value = id;
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js"></script>
<script>
    const urlParams = new URLSearchParams(window.location.search);
    const message = urlParams.get('message'); // "John"
    debugger

    if (message == 'update') {
        Swal.fire({
            position: 'top-end',
            icon: 'success',
            title: 'Sửa thành công',
            showConfirmButton: false,
            timer: 1500
        })
    } else if (message == 'delete') {
        Swal.fire({
            position: 'top-end',
            icon: 'success',
            title: 'Xóa thành công',
            showConfirmButton: false,
            timer: 1500
        })
    }
</script>
</body>
</html>
