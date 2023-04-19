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
    <style>
        * {
            box-sizing: border-box;
        }

        .col-1 {
            width: 8.33%;
        }

        .col-2 {
            width: 16.66%;
        }

        .col-3 {
            width: 25%;
        }

        .col-4 {
            width: 33.33%;
        }

        .col-5 {
            width: 41.66%;
        }

        .col-6 {
            width: 50%;
        }

        .col-7 {
            width: 58.33%;
        }

        .col-8 {
            width: 66.66%;
        }

        .col-9 {
            width: 75%;
        }

        .col-10 {
            width: 83.33%;
        }

        .col-11 {
            width: 91.66%;
        }

        .col-12 {
            width: 100%;
            text-align: center;
        }

        /*.bgr {*/
        /*    background-color: rgba(10, 83, 190, 10%);*/

        /*}*/
        .bgr {
            background-image: url("https://www.jobstreet.com.ph/career-resources/wp-content/uploads/sites/3/2020/12/Where-to-Find-Job-Opportunities-for-Students.jpg");
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            height: 100vh;

        }
        .text-form{
            /*color: white;*/
            /*position: relative;*/
            /*margin-left: auto;*/
            /*top: 41px;*/
            width: 30%;
            padding: 20px;
            top: 58%;
        }
    </style>
</head>
<body>
<div class="row">
    <div class="col-12 position-relative bgr">
        <p class="position-absolute  fs-1"><b class="">Information Category</b></p>
        <p class="position-absolute po">
        <form method="post" class="position-absolute text-form">
            <input type="hidden" name="id" value="${category.getIdCategory()}">
            <label style="color: #adb5bd">
                <b>Post : </b><input name="post" value="${category.getPostCategory()}" class="form-control form-control-lg" type="text" aria-label=".form-control-lg example">
                <input type="submit" value="Lưu" class="btn btn-secondary"></label>
<%--            <input type="text" >--%>

        </form>
        </p>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                crossorigin="anonymous"></script>
        </div>
</div>
</body>
</html>


