<%--
  Created by IntelliJ IDEA.
  User: anhda
  Date: 4/7/2023
  Time: 11:38 PM
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
    <title>Đăng Nhập</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<h3 class="text-primary text-center display-3">Login</h3>
<div id="wrapper">
    <div class="container">
        <div class="row justify-content-center">
            <form action="/user?action=login" class="col-md-6 bg-light p-3 my-3" method="post">

                <div class="form-group mt-2  py-3">
                    <label for="email" class="my-3">Địa Chỉ Email</label>
                    <input type="text" class="form-control" name="email" id="email" value="email">
                </div>

                <div class="form-group mt-2 py-3">
                    <label for="password" class="my-3">Password</label>
                    <input type="text" class="form-control" name="password" id="password" value="password">
                </div>
            </form>
        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>