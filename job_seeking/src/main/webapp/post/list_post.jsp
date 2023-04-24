<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="../../css/bootstrap.css">
    <style>
        body {
            padding: 16px;
        }

        body button {
            border: none;
        }

        .homepage-title {
            color: #fff;
            font-size: 18px;
        }

        .group-action-header {
            display: flex;
            justify-content: space-between;
        }

        .form-search form {
            display: flex;
        }

        .form-search-box button {
            border-radius: 4px;
        }

        .box-search {
            width: 500px;
            margin-right: 16px;
        }

        .add-post-btn {
            height: 38px;
            border-radius: 4px;
            background-color: #28A745;
            border: none;
        }

        .add-post-btn img {
            width: 16px;
            height: 16px;
            margin-right: 8px;
        }

        .user-info-btn {
            border: none;
            background: none;
            width: 30px;
            height: 30px;
            margin-right: 16px;
        }

        .user-info-btn img {
            border-radius: 15px;
        }

        .itemicon {
            height: 64px;
            width: 64px;
        }

        .img-responsive1 {
            height: 24px;
            width: 58px;
            margin-right: 7px;
        }


        .dropbtn {
            background-color: #04AA6D;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }

        .dropbtn:hover, .dropbtn:focus {
            background-color: #3e8e41;
        }

        .dropdown {
            float: right;
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            min-width: 160px;
            overflow: auto;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            right: 0;
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown a:hover {background-color: #ddd;}

        .show {display: block;}

    </style>
</head>


<body class="container-fluid ">
<header class="sticky-top bg-success p-2 text-white">
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid ">
            <a class="navbar-brand" itemprop="url"
               href="/post"
               style="overflow-x: visible;">
                <img alt="" itemprop="logo" class="c-image"
                     src="https://e7.pngegg.com/pngimages/1000/101/png-clipart-job-hunting-intern-employment-website-cover-letter-job-search-text-logo.png"
                     height="75px" width="75px"
                     role="presentation" aria-hidden="true" style="overflow-x: visible;">
                <span itemprop="name" role="presentation" aria-hidden="true" style="overflow-x: visible;"></span>
            </a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item homepage-title">
                        <a class="nav-link active" aria-current="page" href="/post">Trang chủ</a>
                    </li>

                </ul>

                <form method="post" action="/UsersServlet">
                    <input type="hidden" name="email" value="${sessionScope.emailAccount1.email}">
                    <%--        <input type="hidden" name="password" value="${sessionScope.passwordAccount.passWord}">--%>
                    <button type="submit" class="user-info-btn"><img
                            src="https://www.shutterstock.com/image-vector/men-vector-icon-10-eps-260nw-1432335572.jpg"
                            height="30px" width="30px"></button>
                </form>


                <c:if test="${sessionScope.nameAccount != null}">
                    <div class="nav-item mx-2">
                        <a style=" text-align:center; color: black; text-decoration:none; position: absolute; right: 420px;top: 15px; font-weight: bolder; font-size:20px"
                           href="#">${sessionScope.nameAccount.userName}</a>
                    </div>
                    <div class="nav-item mx-2">
                        <button style="padding: 0px" class="btn btn-light" type="button"><a href="/user?action=logout"
                                                                                            class="nav-link active login text-secondary text-nav "
                                                                                            aria-current="page">
                            <i style="position: absolute; right: 190px; width: 30px; padding-top: 5px; color: white"
                               class="ti-shift-right"></i>
                            Logout</a></button>
                    </div>
                </c:if>
                <c:if test="${sessionScope.nameAccount == null}">
                    <div class="nav-item mx-2">
                        <i class="ti-user"></i>
                        <button style="padding: 0px" class="btn btn-light p-2 logout-btn" type="button"><a
                                href="/user/login.jsp"
                                class="nav-link active login text-secondary text-nav"
                                aria-current="page">Đăng xuất</a>
                        </button>
                    </div>
                </c:if>

                <c:if test="${sessionScope.emailAccount == 'admin@gmail.com'}">
                    <div class="nav-item mx-2">
                        <button style="margin-right: 20px; width: 50px" class="btn btn-danger"><a href="/user"
                                                                                                  style="text-decoration: snow">User
                            List</a>
                        </button>
                    </div>
                </c:if>


            </div>
        </div>
    </nav>
</header>
<div class="row ">
    <div class="container">
        <div class="row p-2 text-dark bg-opacity-10">
            <div class="col-md-7 col-sm-12">
                <div class="col-sm-12 ">
                    <h3>Tìm bài đăng</h3>
                    <div class="group-action-header">
                        <div class="form-search">
                            <form action="/post" class="form-search-box">
                                <div class="box-search">
                                    <input type="hidden" name="action" value="search">
                                    <input type="text" placeholder="Tên công việc, bài đăng bạn muốn tìm ..."
                                           class="form-control input-search ui-autocomplete-input border-hover"
                                           name="postTitle"
                                           id="name">
                                </div>
                                <button type="submit" class="btn-success">Tìm kiếm</button>
                            </form>
                        </div>
                        <button type="button" class="text-white bg-opacity-75 add-post-btn">
                            <a class="text-white bg-opacity-75 text-decoration-none" href="/post?action=create"><img
                                    src="https://th.bing.com/th/id/R.24a48b9be3aa23cce4a453ea36b97bbc?rik=GVUm1rXB1NMSrA&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_113133.png&ehk=CgO%2bAzFgIbzwbZyDOG6k4xCiN8yiaW0wlQ8XrjKiUB0%3d&risl=&pid=ImgRaw&r=0"
                                    height="40px" width="40px" alt="">Thêm mới bài viết</a>
                        </button>
                    </div>

                </div>
                <br>
                <h4>Các công ty tuyển dụng hàng đầu </h4>
                <a href="https://onemount.com/" class="itemicon">
                    <img src="https://www.topcv.vn/v4/image/welcome/companies/onemoutn.png"
                         class="img-responsive1">
                </a>
                <a href="https://www.prudential.com.vn/vi/" class="itemicon">
                    <img src="https://www.topcv.vn/v4/image/welcome/companies/prudential.png"
                         class="img-responsive1">
                </a>
                <a href="https://www.fpt-software.com/" class="itemicon">
                    <img src="https://www.topcv.vn/v4/image/welcome/companies/fpt.png"
                         class="img-responsive1">
                </a>
                <a href="https://tuyendung.tiki.vn/" class="itemicon">
                    <img src="https://www.topcv.vn/v4/image/welcome/companies/tiki.png"
                         class="img-responsive1">
                </a>
                <a href="https://tuyendung.viettel.vn/" class="itemicon">
                    <img src="https://www.topcv.vn/v4/image/welcome/companies/viettel.png"
                         class="img-responsive1">
                </a>
                <a href="https://www.techcombankjobs.com/?locale=vi_VN" class="itemicon">
                    <img src="https://www.topcv.vn/v4/image/welcome/companies/teachcombank.png"
                         class="img-responsive1">
                </a>

            </div>
            <div class="col-md-5 col-sm-12 box-search-job-image">
                <img src="https://www.topcv.vn/v4/image/welcome/image_topcv_2.png?v=1.0.0"
                     title="Nhân viên tuyển dụng " alt="Nhan vien tuyen dung " height="350px" width="440px">
            </div>
        </div>
    </div>
</div>
<c:forEach var="post" items="${postList}">
    <div class="container row">
        <div class="col-10 ">
            <tr>
                <h5>${post.getIdPost()}|
                        ${post.getPostTitle()}|
                        ${post.getDateSubmitted()}
                    <td>
                        <button type="button" class="" data-toggle="modal" data-target="#exampleModal${post.idPost}">
                            <img src="https://thumbs.dreamstime.com/b/computer-generated-illustration-recycle-bin-icon-isolated-white-background-suitable-logo-delete-icon-button-175612353.jpg"
                                 height="30px" width="30px" alt="">
                        </button>
                        <button>
                            <a href="/post?action=update&id=${post.getIdPost()}"><img
                                    src="https://icon2.cleanpng.com/20180904/bjj/kisspng-customer-service-computer-icons-car-automobile-rep-served-svg-png-icon-free-download-27465-onli-5b8e1bbe7fda14.3508031215360398705237.jpg"
                                    height="30px" width="30px" alt=""></a>
                        </button>

                        <div class="dropdown">
                            <button onclick="myFunction()" class="dropbtn">Dropdown</button>
                            <div id="myDropdown" class="dropdown-content">
                                <a href="#/post?action=update&id=${post.getIdPost()}">Chỉnh sửa</a>
                                <button type="button" class="" data-toggle="modal" data-target="#exampleModal${post.idPost}">Xóa</button>
                                <a href="#contact">Contact</a>
                            </div>
                        </div>
                        <script>
                            /* When the user clicks on the button,
                            toggle between hiding and showing the dropdown content */
                            function myFunction() {
                                document.getElementById("myDropdown").classList.toggle("show");
                            }

                            // Close the dropdown if the user clicks outside it
                            window.onclick = function(event) {
                                if (!event.target.matches('.dropbtn')) {
                                    var dropdowns = document.getElementsByClassName("dropdown-content");
                                    var i;
                                    for (i = 0; i < dropdowns.length; i++) {
                                        var openDropdown = dropdowns[i];
                                        if (openDropdown.classList.contains('show')) {
                                            openDropdown.classList.remove('show');
                                        }
                                    }
                                }
                            }
                        </script>
                    </td>
                </h5>
                <h6>Ngành: ${post.getPostCategory()}</h6>
                <h6>Người đăng: ${post.getUserName()}</h6>

                <!-- Modal -->
                <form action="/post" method="get">
                    <div class="modal fade" id="exampleModal${post.idPost}" tabindex="-1" role="dialog"
                         aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Xóa bài đăng</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <input type="hidden" name="action" value="delete">
                                <input type="hidden" name="id" value="${post.idPost}">
                                <div class="modal-body">
                                    Bạn có muốn xóa bài đăng ${post.getPostTitle()}
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                    <button type="submit" class="btn btn-primary">Xóa</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>

            </tr>
            <tr>
                <td>${post.getDescribe()}</td>
            </tr>
        </div>
        <div class="col-2 ">
            <td><img src="${post.getImg()}" width="280px" height="360px" alt="unavailable"></td>
        </div>
    </div>

</c:forEach>
<footer class="bg-success p-2 text-dark bg-opacity-25">
    <div class="footer-main">
        <div class="container">
            <div class="box-main">
                <div class="column">
                    <a href="/post">
                        <img src="https://e7.pngegg.com/pngimages/1000/101/png-clipart-job-hunting-intern-employment-website-cover-letter-job-search-text-logo.png"
                             height="75px" width="75px"
                             class="img-logo-footer img-responsive">
                    </a>
                    <div class="box-contact">
                        <p class="title">Liên hệ</p>
                        <span>Hotline:</span><a href="tel:0835443443">0835 443 443</a><br>
                        <span>Email:</span><a href="mailto:tuyendung@jobsearch.vn">tuyendung@jobsearch.vn</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-info">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h4 class="name-company">
                            Công ty Cổ phần JobSearch
                        </h4>
                        <div class="box-tax-code">
                            <div class="group-top">
                                <div class="item">
                                    <i class="fa-solid fa-calculator"></i>
                                    <b>Mã số thuế:</b>
                                    <span>5612228386</span>
                                </div>
                            </div>
                            <div class="item">
                                <i class="fa-solid fa-location-dot"></i>
                                <b>Trụ sở :</b>
                                <span>Tầng 2 Tòa nhà CodeGym, số 280 Trần Hưng Đạo, P.An Hải Tây, Q.Sơn Trà, TP.Đà Nẵng</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="box-ecosystem">
                            <div class="list-ecosystem">
                                <div class="title">
                                    | Cộng đồng của JobSearch |
                                </div>
                                <div class="box-image-app">
                                    <a href="https://www.youtube.com/@vtv24">
                                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWzzrxWAQNMl61R7WTsEGU8L36Nyfx67m2WQ&usqp=CAU"
                                             height="40px" width="40px">
                                    </a>
                                    <a href="https://www.facebook.com/kenhtuyendungdanang">
                                        <img class="img-responsive"
                                             src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Facebook_logo_%28square%29.png/800px-Facebook_logo_%28square%29.png"
                                             height="40px" width="40px">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <p class="copyright">
                            © 2023 JobSearch JSC. Design by group2/C1222G1.
                        </p></div>
                </div>
            </div>
        </div>
    </div>
</footer>
</body>
</html>