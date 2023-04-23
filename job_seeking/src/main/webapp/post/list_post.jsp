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
    <link rel="stylesheet" href="https://static.licdn.com/aero-v1/sc/h/atbn2o0wa7dkf1r28i6huscbz">
</head>
<body>
<a href="/post" class="nav__logo-link link-no-visited-state z-1 mr-auto babybear:z-0 babybear:mr-0 babybear:flex-1 hover:no-underline focus:no-underline active:no-underline" data-tracking-control-name="guest_homepage-jobseeker_nav-header-logo" data-tracking-will-navigate="">
    <img style="width: 77px;height: 60px" src="https://www.shutterstock.com/image-vector/job-searching-icon-260nw-1224749530.jpg" alt="">
</a>
<c:choose>
    <c:when test="${sessionScope.emailAccount1.email != 'admin@gmail.com' }">
        <a class="btn btn-info" href="/post?action=create&emailUser=${sessionScope.emailAccount1.email}" role="button">Tạo
            mới</a>
    </c:when>
    <c:otherwise>
        <p></p>
    </c:otherwise>
</c:choose>
<form action="/post">
    <div class="box-search">
        <input type="hidden" name="action" value="search">
        <input type="text" placeholder="Tên công việc, bài đăng bạn muốn tìm ..."
               class="form-control input-search ui-autocomplete-input border-hover" name="postTitle"
               id="name">
    </div>
    <button type="submit" class="btn-success">Tìm kiếm</button>
</form>
<%--<a name="" id="" class="btn btn-primary" href="/post" role="button">Trang chủ</a>--%>
<table class="table">
    <thead>
    <tr>
        <th>NO</th>
        <th>Bài đăng</th>
        <th>Mô tả</th>
        <th>Ngày đăng</th>
        <th>Hình ảnh</th>
        <th>Thể loại</th>
        <th>Người đăng</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="post" items="${postList}" varStatus="no">
        <tr>
            <td scope="row">${no.count}</td>
            <td>${post.getPostTitle()}</td>
            <td>${post.getDescribe()}</td>
            <td>${post.getDateSubmitted()}</td>
            <td><img src="${post.getImg()}" width="100px" height="100px"></td>
            <td>${post.getPostCategory()}</td>
            <td>${post.getUserName()}</td>
            <c:choose>
                <c:when test="${post.getEmailUserName()==sessionScope.emailAccount1.email or sessionScope.emailAccount1.email== 'admin@gmail.com' }">
                    <td><a class="btn btn-info"
                           href="/post?action=update&email=${post.getEmailUserName()}&idPost=${post.getIdPost()}"
                           role="button">Update</a></td>
                </c:when>
                <c:otherwise>
                    <p></p>
                </c:otherwise>
            </c:choose>
            <c:choose>
                <c:when test="${post.getEmailUserName()==sessionScope.emailAccount1.email}">
                    <td>
                        <button onclick="deleteById(${post.getIdPost()})" type="button" class="btn btn-primary btn-lg" data-bs-toggle="modal" data-bs-target="#modelId">
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
    function deleteById(id) {
        document.getElementById("idDelete").value = id;
    }
</script>
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
                <form action="/post">
                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="idPost" id="idDelete">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Xóa</button>
                </form>
            </div>
        </div>
    </div>
</div>
<p>
    ---------------------------------------------------------------------------------------------------------------------</p>
<li>
    <c:if test="${sessionScope.nameAccount != null}">
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
            <button style="padding: 0px" class="btn btn-light" type="button"><a href="/user/login.jsp"
                                                                                class="nav-link active login text-secondary text-nav"
                                                                                aria-current="page">Đăng nhập</a>
            </button>
        </div>
    </c:if>

    <c:if test="${sessionScope.emailAccount == 'admin@gmail.com'}">
        <a name="" id="" class="btn btn-primary" href="/user"
           role="button">Danh sách người dùng</a>
        <a name="" id="" class="btn btn-primary" href="/categoryServlet"
           role="button">Thể loại</a>
    </c:if>
</li>
<p>
    -------------------------------------------------------------------------------------------------------------------------------------</p>
<c:choose>
    <c:when test="${sessionScope.emailAccount1.email != 'admin@gmail.com' }">
<form action="/UsersServlet">
    <input type="hidden" name="email" value="${sessionScope.emailAccount1.email}">
    <%--        <input type="hidden" name="password" value="${sessionScope.passwordAccount.passWord}">--%>
    <button type="submit"><img
            src="https://www.shutterstock.com/image-vector/men-vector-icon-10-eps-260nw-1432335572.jpg" height="50px"
            width="50px"></button>
</form>
    </c:when>
    <c:otherwise>
        <p></p>
    </c:otherwise>
</c:choose>
<p>---------------------------------------------------------------------------------------</p>

</body>
</html>