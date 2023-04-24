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
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/@sweetalert2/theme-dark@4/dark.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, Tahoma;
            font-size: 12px;
            margin-top: 50px;

        }

        #main {
            width: 1000px;
            padding: 0;
            margin-left: auto;
            margin-right: auto;
        }

        #head {
            height: 50px;
            border: 1px solid #CDCDCD;
            margin-bottom: 5px;
            position: fixed;
            margin-top: -50px;
            /*padding: 12px;*/
            width: 74.2%;
            background-color: #BEBFBF;
        }

        #head-link {
            height: 30px;
            line-height: 30px;
            padding-left: 359px;
            padding-right: 10px;
            /*border: 1px solid #CDCDCD;*/
            margin-bottom: 0px;
            clear: both;
            position: fixed;

        }

        #left {
            width: 150px;
            min-height: 400px;
            border: 1px solid #CDCDCD;
            float: left;
            margin-bottom: 5px;
            position: fixed;
        }

        #content {
            width: 600px;
            min-height: 400px;
            border: 1px solid #CDCDCD;
            float: left;
            margin-left: 158px;
            margin-right: 5px;
            margin-bottom: 5px;
            margin-top: 31px;

        }

        #right {
            width: 234px;
            min-height: 400px;
            border: 1px solid #CDCDCD;
            float: right;
            margin-left: 766px;
            position: fixed;
        }

        #footer {
            height: 50px;
            clear: both;
            border: 1px solid #CDCDCD;
            background-color: #D9D9DB;
            /*position: fixed;*/
            bottom: 0;
        }

        .nameList {
            color: #0c0c0c;
            padding-right: 50px;
        }
        .searchStyle{

            position: fixed;
        }
    </style>
</head>
<body>
<div id="main">
    <div id="head">
        <div class="col-12 row ">
            <div class="col-6 ">
                <a style="text-decoration: none" href="/post"><img
                        src="https://cdn-icons-png.flaticon.com/512/7133/7133312.png" width="50"
                        height="50" style="margin-top: 0px"><span class="nameList">Trang chủ</span></a>
            </div>
           <div class="col-6">
               <a href="/user" style="text-decoration: none"><img src="https://symbols.vn/wp-content/uploads/2021/11/Icon-sach-don-gian.png" width="50"
                                                  height="50"><span class="nameList">Danh sách người dùng</span></a>
           </div>
        </div>
    </div>
    <div id="head-link">
    </div>
    <div id="left">
            <form>
                <div class="row col-4 searchStyle" >
                    <div class="col-1"><input type="text" name="nameToSearch" style="margin-left: 577px"></div>
                    <div class="col-2">
                        <button type="submit" class="button-text" style="margin-left: 694px">
                            <ion-icon name="search-outline"></ion-icon>
                        </button>
                    </div>
                    <input type="hidden" name="action" value="searchByName">
                </div>
            </form>
        </div>

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
    <div id="right">
    </div>
    <%--    <div id="footer">--%>
    <%--        <p>ADASDASDASD</p>--%>
    <%--    </div>--%>
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
