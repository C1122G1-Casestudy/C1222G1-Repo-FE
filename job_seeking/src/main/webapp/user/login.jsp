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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
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
        .icon-container {
             display: flex;
             justify-content: center;
             align-items: center;
             /*height: 100%;*/
            width: 100%;
         }
        i.fab{
            font-size: 50px;
        }
    </style>
</head>
<body>

<h3 class="text-primary text-center display-3">Login</h3>
<div id="wrapper">
    <div class="container">
        <div class="row justify-content-center">
            <form action="/user?action=login" class="col-md-6 p-3 bgr my-3" method="post">
                <%--                <div>--%>
                <%--                    <a href="#"><img src="facebook.svg" alt="Facebook"></a>--%>
                <%--                    <a href="#"><img src="google.svg" alt="Google"></a>--%>
                <%--                    <a href="#"><img src="twitter.svg" alt="Twitter"></a>--%>
                <%--                </div>--%>
                <%--                <p class="auth-sgt">or sign in with:</p>--%>
<div>
                        <div class="icon-container">
                            <a href="https://www.facebook.com"><i class="fab fa-facebook"></i></a>
                            <a href="https://www.google.com"><i class="fab fa-google"></i></a>
                            <a href="https://www.twitter.com"><i class="fab fa-twitter"></i></a>
                        </div>
    <div class="py-1 mt-2 text-center text-uppercase text-danger">
        or you can login with:
    </div>
</div>
                <div class="form-group mt-1 ">
                    <label for="exampleInputName" class="my-3 h3" placeholder="Your Email">Email</label>
                    <input class="form-control" id="exampleInputName" type="email" name="email"
                           aria-describedby="nameHelp" placeholder="Your Email" autocomplete="off" max="50" required>
                    <i class="input-icon uil uil-at"></i>
                </div>

                <div class="form-group py-3">
                    <label for="exampleInputEmail1" class="my-3 h3">Password</label>
                    <input type="password" class="form-control" name="password" id="exampleInputEmail1"
                           aria-describedby="emailHelp" placeholder="Your Password" autocomplete="off" minlength="6"
                           maxlength="50" required>
                </div>
                <div>
                    <button type="submit" class="btn btn-primary my-3 py-3">SIGN IN</button>
                    <p class="text-end">
                        <button class="btn" style="text-color:white"><a href="/user/register.jsp">SIGN UP</a></button>
                    </p>

                    <p class="text-center text-danger">${loginFail}</p>
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