<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 4/17/2023
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
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
</head>
<body>
<form action="/categoryServlet?actionCategory=create" method="post">
    <div class="input-group mb-3">
        <span class="input-group-text" id="basic-addon1">Id</span>
        <input type="number" class="form-control" placeholder="Id Category" aria-label="IdCategory" aria-describedby="basic-addon1"
               name="id" required>
    </div>
    <div class="input-group mb-3">
        <span class="input-group-text" id="basic-addon2">Thể loại : </span>
        <input type="text" class="form-control" placeholder="CategoryName" aria-label="NameCategory" aria-describedby="basic-addon2"
               name="post" required>
    </div>

    <div>
        <button type="submit" class="btn btn-secondary">Lưu</button>
    </div>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
