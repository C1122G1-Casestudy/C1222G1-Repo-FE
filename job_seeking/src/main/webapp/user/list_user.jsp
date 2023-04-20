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
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
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
                        <td><a class="btn btn-info" href="/user?action=update&idToUpdate=${user.getId()}"
                               role="button">Cập nhật thông tin</a></td>
                        <td>
                            <button onclick="deleteByName('${user.getUserName()}',${user.getId()})" type="button"
                                    class="btn btn-primary btn-lg" data-bs-toggle="modal" data-bs-target="#modelId">
                                Xóa
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <form>
                <input type="hidden" name="action" value="searchByName">
                <input type="text" name="nameToSearch">
                <button type="submit">Tìm kiếm</button>
            </form>
            <a class="btn btn-info" href="/user"
               role="button">Trở lại</a>
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

<button class="btn btn-outline-danger"><a style="text-decoration: none" href="/post">Home page</a></button>
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
            "pageLength": 5
        });
    });
</script>
<script>
    function deleteByName(name, id) {
        document.getElementById("nameToDelete").innerText = name;
        document.getElementById("idToDelete").value = id;
    }
</script>
</body>
</html>
