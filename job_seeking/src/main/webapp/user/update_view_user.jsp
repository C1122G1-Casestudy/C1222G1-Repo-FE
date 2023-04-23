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
</head>
<body>
<c:choose>
  <c:when test="${sessionScope.emailAccount1.email==post.getEmailUserName()}">
    <form method="post" action="/UsersServlet?action=update&email=${sessionScope.emailAccount1.email}">
      <input type="hidden" name="idPost" value="${post.getIdPost()}" id="idPost">
      <label for="postTitle" >postTitle</label>
      <input type="text" name="postTitle" value="${post.getPostTitle()}" id="postTitle">
      <label for="describe">describe</label>
      <input type="text" name="describe" value="${post.getDescribe()}" id="describe">
      <label for="dateSubmitted">dateSubmitted</label>
      <input type="text" name="dateSubmitted" value="${post.getDateSubmitted()}" id="dateSubmitted">
      <label for="img">img</label>
      <input type="text" name="img" value="${post.getImg()}" id="img">
        <%--    <label for="post_category">post_category</label>--%>
        <%--    <input type="text" name="post_category" value="${post.getPostCategory()} "id="post_category">--%>
      <label>post_category</label>
      <select name="idCategory" >
        <c:forEach items="${categoryList}" var="category">
          <option value="${category.idCategory}">
              ${category.postCategory}
          </option>
        </c:forEach>
      </select>
        <%--            <input type="hidden" name="emailUse" value="${post.getEmailUserName()}" id="emailUse">--%>
      <button type="submit">Cập Nhật</button>
    </form>
  </c:when>
  <c:otherwise>
    <p>Bạn không được phép sửa đổi thông tin</p>
    <a href="/UsersServlet">Về lại trang cá nhân</a>
  </c:otherwise>
</c:choose>
</body>
</html>
