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
    <title>Tạo mới bài đăng</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="../../css/bootstrap.css">
<%--    <link href="../bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">--%>
<%--    <script src="../bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>--%>

    <style>
        .display {
            display: flex;
            flex-direction: column;
        }
        body {
            padding: 16px;
        }
        body button {
            border: none;
        }
        .homepage-title {
            color: #fff;
            font-size: 18px;
        }
        .group-action-header {
            display: flex;
            justify-content: space-between;
        }
        .form-search form {
            display: flex;
        }
        .form-search-box button {
            border-radius: 4px;
        }
        .box-search {
            width: 500px;
            margin-right: 16px;
        }
        .add-post-btn {
            height: 38px;
            border-radius: 4px;
            background-color: #28A745;
            border: none;
        }
        .add-post-btn img {
            width: 16px;
            height: 16px;
            margin-right: 8px;
        }
        .user-info-btn {
            border: none;
            background: none;
            width: 30px;
            height: 30px;
            margin-right: 16px;
        }
        .user-info-btn img {
            border-radius: 15px;
        }
    </style>

</head>

<body>
<h1 class="text-center">Create new post</h1>
<h4 class="text-center"><a href="/post">Back</a></h4>
<h3 class="text-center">
    <c:if test="${message != null}">
        <h3 class="text-center" style="color: coral">${message}</h3>
    </c:if>
</h3>
<form method="post">
<%--    <tr>--%>
<%--        <td>Nhập mã bài đăng:</td>--%>
<%--        <td>--%>
<%--            <input type="number" name="idPost" value="action"/>--%>
<%--        </td>--%>
<%--    </tr>--%>
    <tr>
        <td>Nhập tên tiêu đề:</td>
        <td>
            <input type="text" name="postTitle" />
        </td>
    </tr>
    <tr>
        <td>Nhập nội dung:</td>
        <td>
            <textarea type="text" name="describe" ></textarea>
        </td>
    </tr>
    <tr>
        <td>Nhập ngày đăng:</td>
        <td>
            <input type="text" id="dateSubmitted" name="dateSubmitted" />
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
        <select name="idCategory">
            <c:forEach items="${categoryList}" var="category">
                <option value="${category.idCategory}">
                        ${category.postCategory}
                </option>
            </c:forEach>
        </select>
    </tr>
<%--    <label>Id người dùng</label>--%>
    <tr>
    <c:forEach var="user" items="${userList}">
        <c:choose>
            <c:when test="${user.getEmail()==nameUser}">
                <input type="hidden" name="idUser" value="${user.getId()}">
<%--                <input type="text" name="idUser" value="${user.getUserName()}">--%>
            </c:when>
        </c:choose>
    </c:forEach>
    </tr>
    <tr>
        <td>
            <button type="submit" class="btn btn-primary">Submit</button>
        </td>
    </tr>
</form>

<body class="container">
<header class="sticky-top bg-success p-2 text-white">
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid ">
            <a class="navbar-brand" itemprop="url"
               href="/post"
               style="overflow-x: visible;">
                <img alt="" itemprop="logo" class="c-image"
                     src="https://e7.pngegg.com/pngimages/1000/101/png-clipart-job-hunting-intern-employment-website-cover-letter-job-search-text-logo.png"
                     height="75px" width="75px"
                     role="presentation" aria-hidden="true" style="overflow-x: visible;">
                <span itemprop="name" role="presentation" aria-hidden="true" style="overflow-x: visible;"></span>
            </a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item homepage-title">
                        <a class="nav-link active" aria-current="page" href="/post">Trang chủ</a>
                    </li>

                </ul>

                <form method="post" action="/UsersServlet">
                    <input type="hidden" name="email" value="${sessionScope.emailAccount1.email}">
                    <%--        <input type="hidden" name="password" value="${sessionScope.passwordAccount.passWord}">--%>
                    <button type="submit" class="user-info-btn"><img
                            src="https://www.shutterstock.com/image-vector/men-vector-icon-10-eps-260nw-1432335572.jpg"
                            height="30px" width="30px"></button>
                </form>


                <c:if test="${sessionScope.nameAccount != null}">
                    <div class="nav-item mx-2">
                        <a style=" text-align:center; color: black; text-decoration:none; position: absolute; right: 420px;top: 15px; font-weight: bolder; font-size:20px"
                           href="#">${sessionScope.nameAccount.userName}</a>
                    </div>
                    <div class="nav-item mx-2">
                        <button style="padding: 0px" class="btn btn-light" type="button"><a href="/user?action=logout"
                                                                                            class="nav-link active login text-secondary text-nav "
                                                                                            aria-current="page">
                            <i style="position: absolute; right: 190px; width: 30px; padding-top: 5px; color: white"
                               class="ti-shift-right"></i>
                            Logout</a></button>
                    </div>
                </c:if>
                <c:if test="${sessionScope.nameAccount == null}">
                    <div class="nav-item mx-2">
                        <i class="ti-user"></i>
                        <button style="padding: 0px" class="btn btn-light p-2 logout-btn" type="button"><a
                                href="/user/login.jsp"
                                class="nav-link active login text-secondary text-nav"
                                aria-current="page">Đăng xuất</a>
                        </button>
                    </div>
                </c:if>

                <c:if test="${sessionScope.emailAccount == 'admin@gmail.com'}">
                    <div class="nav-item mx-2">
                        <button style="margin-right: 20px; width: 50px" class="btn btn-danger"><a href="/user"
                                                                                                  style="text-decoration: snow">User
                            List</a>
                        </button>
                    </div>
                </c:if>


            </div>
        </div>
    </nav>
</header>

<div class="row">
    <div class="container" >
        <div class="row">
            <div class="col-sm-12 ">
                <h2 class="text-center" style="text-align: center">Tạo mới bài đăng</h2>
                <h3 class="text-center">
                    <c:if test="${message != null}">
                        <h3 class="text-center" style="color: coral">${message}</h3>
                    </c:if>
                </h3>
                <form method="post" class="display">
                    <%--    <tr>--%>
                    <%--        <td>Nhập mã bài đăng:</td>--%>
                    <%--        <td>--%>
                    <%--            <input type="number" name="idPost" value="action"/>--%>
                    <%--        </td>--%>
                    <%--    </tr>--%>
                    <tr>
                        <td>Nhập tên tiêu đề:</td>
                        <td>
                            <input type="text" name="postTitle"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Nhập nội dung:</td>
                        <td>
                            <textarea type="text" name="describe" rows="10"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>Nhập ngày đăng:</td>
                        <td>
                            <input type="text" id="dateSubmitted" name="dateSubmitted"/>
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
                        <select name="idCategory">
                            <c:forEach items="${categoryList}" var="category">
                                <option value="${category.idCategory}">
                                        ${category.postCategory}
                                </option>
                            </c:forEach>
                        </select>
                    </tr>
                    <tr>
                        <td>
                            <button type="submit" class="bg-success p-2 text-white">Submit</button>
                        </td>
                    </tr>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
