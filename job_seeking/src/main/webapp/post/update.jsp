<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/18/2023
  Time: 12:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>
        .display {
            display: flex;
            flex-direction: column;
        }
        body {
            background-image: url('https://static.storyweaver.org.in/illustrations/58816/large/3.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }
    </style>
</head>
<body>
<a href="/post" class="nav__logo-link link-no-visited-state z-1 mr-auto babybear:z-0 babybear:mr-0 babybear:flex-1 hover:no-underline focus:no-underline active:no-underline" data-tracking-control-name="guest_homepage-jobseeker_nav-header-logo" data-tracking-will-navigate="">
    <img style="width: 87px;height: 70px" src="https://www.shutterstock.com/image-vector/job-searching-icon-260nw-1224749530.jpg" alt="">
</a>
<c:choose>
    <c:when test="${sessionScope.emailAccount1.email==post.getEmailUserName() or sessionScope.emailAccount1.email == 'admin@gmail.com' }">
        <h1 style="text-align: center">Chỉnh sửa bài đăng</h1>
        <form method="post" class="display input-group">
            <input type="hidden" name="idPost" value="${post.getIdPost()}" id="idPost">
           <p> <label for="postTitle" ><strong>Tiêu đề: </strong></label>
               <input type="text" name="postTitle" value="${post.getPostTitle()}" id="postTitle" style="border: none"> </p>
           <label ><strong>Nội dung</strong></label>
<%--            <input type="text" name="describe" value="${post.getDescribe()}" id="describe">--%>
            <textarea name="describe" rows="10" style="border: none">${post.getDescribe()}</textarea>
           <p> <label for="dateSubmitted"><strong>Ngày đăng</strong></label>
            <input type="text" name="dateSubmitted" value="${post.getDateSubmitted()}" id="dateSubmitted" style="border: none"> </p>
            <label for="img"><strong>Hình ảnh</strong></label>
            <input type="text" name="img" value="${post.getImg()}" id="img">
           <p> <label><strong>Thể loại</strong></label>
            <select name="idCategory" >
                <c:forEach items="${categoryList}" var="category">
                    <option value="${category.idCategory}">
                            ${category.postCategory}
                    </option>
                </c:forEach>
            </select> </p>
           <p> <label style="border: none"><strong>Người đăng bài</strong></label>
            <input disabled value="${post.getUserName()}" style="border: none"> </p>
            <button type="submit" style="color: #4d5154"><strong style="font-size: 20px">Cập Nhật</strong></button>
        </form>
    </c:when>
    <c:otherwise>
        <p>Bạn không được phép sửa đổi thông tin</p>
        <a href="/post">Trang chủ</a>
    </c:otherwise>
</c:choose>
</body>
</html>
