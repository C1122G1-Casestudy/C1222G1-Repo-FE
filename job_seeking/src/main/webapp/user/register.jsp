<%--
  Created by IntelliJ IDEA.
  User: anhda
  Date: 4/7/2023
  Time: 11:39 PM
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
    <title>Đăng ký tài khoản:</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <style>
        body {
            background-image: url('https://treobangron.com.vn/wp-content/uploads/2022/09/background-phong-lam-viec-16.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }

        .bgr {
            background-color: rgba(299, 199, 202, 20%);
        }
    </style>

</head>
<body>

<div id="wrapper">
    <div class="container">
        <div class="row justify-content-center">
            <form action="/user?action=register" class="col-md-6 bgr p-3 my-3" method="post">
                <h1 class="text-center text-uppercase h3 py-3">SIGN UP</h1>
                <div class="form-group my-2">
                <label for="fullname" >Full Name</label>
                    <input type="text" class="form-control" name="name" id="fullname" autocomplete="off" minlength="3" maxlength="50" required>
                </div>
                <div class="form-group my-2">
                <label for="email" >Email</label>
                    <input type="text" class="form-control" name="email" id="email" autocomplete="off" max="50" required>
                </div>
                <div class="form-group my-2">
                <label for="password" >Password</label>
                    <input type="text" class="form-control" name="password" id="password" autocomplete="off" minlength="6" maxlength="50" required>
                </div>
                <div class="form-group my-2">
                <label for="phonenumber" >Phone Number</label>
                    <input type="text" class="form-control" name="phoneNum" id="phonenumber" autocomplete="off" minlength="10" maxlength="12" required>
                </div>
                <div>
                    <button type="submit" class="btn btn-primary my-3">Submit</button>
<%--                    <p class="text-center text-danger display-4 ">${registerFail} </p>--%>
                    <div class="alert alert-warning" role="alert" id="myAlert">
                       <p>${registerFail}</p>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    // Lấy đối tượng thông báo
    var alert = document.getElementById("myAlert");

    // Ẩn thông báo sau 2 giây
    setTimeout(function() {
        alert.style.display = "none";
    }, 2000);
</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>