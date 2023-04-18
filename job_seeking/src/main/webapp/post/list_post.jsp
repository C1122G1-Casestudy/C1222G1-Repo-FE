<%--
  Created by IntelliJ IDEA.
  User: anhda
  Date: 4/7/2023
  Time: 11:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Title</title>
</head>
<body>
<table class="table">
  <thead>
  <tr>
    <th>ID</th>
    <th>POST TITLE</th>
    <th>DESCRIBE</th>
    <th>DATE SUBMITTED</th>
    <th>IMG</th>
    <th>CATEGORY</th>
    <th>USERNAME</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="post" items="${postList}">
    <tr>
      <td scope="row">${post.getIdPost()}</td>
      <td>${post.getPostTitle()}</td>
      <td>${post.getDescribe()}</td>
      <td>${post.getDateSubmitted()}</td>
      <td>${post.getImg()}</td>
    </tr>
    <tr>
      <td scope="row"></td>
      <td></td>
      <td></td>
    </tr>
  </c:forEach>
  </tbody>
</table>

</body>
</html>
