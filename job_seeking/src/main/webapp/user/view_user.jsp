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
<a href="/post" class="nav__logo-link link-no-visited-state z-1 mr-auto babybear:z-0 babybear:mr-0 babybear:flex-1 hover:no-underline focus:no-underline active:no-underline" data-tracking-control-name="guest_homepage-jobseeker_nav-header-logo" data-tracking-will-navigate="">
    <img style="width: 87px;height: 70px" src="https://www.shutterstock.com/image-vector/job-searching-icon-260nw-1224749530.jpg" alt="">
</a>
<c:choose>
    <c:when test="${user.getEmail()==sessionScope.emailAccount1.email}">
<a  class="btn btn-primary" href="/UsersServlet?action=updateInf&emailUpdateInf=${sessionScope.emailAccount1.email}" role="button">Chỉnh sửa thông tin trang cá nhân</a>
    </c:when>
    <c:otherwise>
        <p>Bạn không có quyền</p>
    </c:otherwise>
</c:choose>
<table class="table">
    <thead>
    <tr>
        <th>Tên</th>
        <th>Số điện thoại</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>${user.getUserName()}</td>
        <td>${user.getPhoneNumber()}</td>
    </tr>
    </tbody>
</table>
<table class="table">
    <thead>
    <tr>
        <th>Tên bài đăng</th>
        <th>Mô tả </th>
        <th>Ngày đăng</th>
        <th>Hình ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="userDTOList" items="${userDTOList}">
    <tr>
        <td>${userDTOList.getPostTitle()}</td>
        <td>${userDTOList.getDescribe()}</td>
        <td>${userDTOList.getDateSubmitted()}</td>
        <td><img src="${userDTOList.getImg()}" height="100px" width="100px"></td>
        <c:choose>
            <c:when test="${userDTOList.getEmail()==sessionScope.emailAccount1.email}">
                <td><a class="btn btn-info"
                       href="/UsersServlet?action=update&email=${sessionScope.emailAccount1.email}&idPost=${userDTOList.getIdPost()}"
                       role="button">Update</a></td>
            </c:when>
            <c:otherwise>
                <p></p>
            </c:otherwise>
        </c:choose>
        <c:choose>
            <c:when test="${userDTOList.getEmail()==sessionScope.emailAccount1.email}">
                <td>
                    <button onclick="deleteById(${userDTOList.getIdPost()},'${userDTOList.getEmail()}')" type="button" class="btn btn-primary btn-lg" data-bs-toggle="modal" data-bs-target="#modelId">
                        Xóa
                    </button>
                </td>
            </c:when>
            <c:otherwise>
                <p></p>
            </c:otherwise>
        </c:choose>
    </tr>
    </c:forEach>
    </tbody>
</table>
<script>
    function deleteById(id,email) {
        document.getElementById("idDelete").value = id;
        document.getElementById("emailDelete").value = email;
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
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
                Bạn có muốn xóa bài viết không?
            </div>
            <div class="modal-footer">
                <form action="/UsersServlet">
                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="idPost" id="idDelete">
                    <input type="hidden" name="email" id="emailDelete">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Xóa</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
