<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/19/2023
  Time: 9:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>UpdateUser</title>
</head>
<body>
<form method="post">
    <input type="hidden" id="id" name="idToUpdate" value="${userToUpdate.getId()}">
    <label for="name">Name Of User</label>
    <input type="text" id="name" name="nameToUpdate" value="${userToUpdate.getUserName()}">
    <label for="phoneNumber" autocomplete="off" minlength="10" maxlength="12" required>Phone Of Number</label>
    <input type="text" id="phoneNumber" name="phoneNumberToUpdate" value="${userToUpdate.getPhoneNumber()}">
    <button type="submit">Update</button>
</form>
</body>
</html>
