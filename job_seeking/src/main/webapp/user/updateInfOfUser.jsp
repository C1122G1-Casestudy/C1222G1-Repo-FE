<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/23/2023
  Time: 5:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:choose>
    <c:when test="${InfToUpdate.getEmail()==sessionScope.emailAccount1.email}">
<form method="post" action="/UsersServlet?action=updateInf&email=${sessionScope.emailAccount1.email}">
    <label>Email</label>
    <input disabled type="text" name="email" value="${InfToUpdate.getEmail()}" autocomplete="off" max="50" required>
    <label>NameUser</label>
    <input type="text" name="nameOfUser" value="${InfToUpdate.getUserName()}">
    <label>Password</label>
    <input type="password" name="password" autocomplete="off" minlength="6" maxlength="50" required>
    <label>Phone Number</label>
    <input type="number" name="phoneNumber" value="${InfToUpdate.getPhoneNumber()}" autocomplete="off" minlength="10" maxlength="12" required>
    <button type="submit">Update</button>
</form>
    </c:when>
    <c:otherwise>
        <p>Bạn không được phép sửa</p>
        <a href="/UsersServlet">Về lại trang cá nhân</a>
    </c:otherwise>
</c:choose>
</body>
</html>
