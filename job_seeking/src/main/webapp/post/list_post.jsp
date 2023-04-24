<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="https://static.licdn.com/aero-v1/sc/h/atbn2o0wa7dkf1r28i6huscbz">
    <link id="ui-theme" rel="stylesheet" href="https://static.licdn.com/sc/h/af9xzjjxzpk0m42sc591uoxml">
    <link rel="stylesheet" href="https://static.licdn.com/sc/h/c4mrgnc4fgaawh3bw0dqndvw4">
    <link rel="stylesheet" href="https://static.licdn.com/sc/h/2ok04oilphgqewjusp7dgbu5u">
    <link rel="stylesheet" href="https://static.licdn.com/sc/h/9s366symjgvf4wujijavj0vho">
    <link rel="stylesheet" href="https://static.licdn.com/aero-v1/sc/h/atbn2o0wa7dkf1r28i6huscbz">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap5.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


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

    </style>

</head>
<body>
<div class="application-outlet">
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <!--                    trong thẻ a khi họ click vào thì cho nó về trang post-->
                <a class="navbar-brand" href="/post"><img style="width: 76px ; height: 60px"
                                                          src="https://www.shutterstock.com/image-vector/job-searching-icon-260nw-1224749530.jpg"
                                                          alt=""></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <form class="d-flex" action="/post">
                        <input type="hidden" name="action" value="search">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"
                               name="postTitle">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <!--                                cho hắn cái link trở về trang post-->
                            <a class="nav-link active" aria-current="page" href="/post"
                               style="font-size: x-large">Home</a>
                        </li>

                    </ul>
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    </ul>
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <!--                                cho hắn cái link trở về trang post-->

                            <c:choose>
                                <c:when test="${sessionScope.emailAccount1.email != 'admin@gmail.com' }">
                                    <form action="/UsersServlet">
                                        <input type="hidden" name="email" value="${sessionScope.emailAccount1.email}">
                                        <button type="submit"><img
                                                src="https://www.shutterstock.com/image-vector/men-vector-icon-10-eps-260nw-1432335572.jpg"
                                                height="50px"
                                                width="50px"></button>
                                    </form>
                                </c:when>
                                <c:otherwise>
                                    <p></p>
                                </c:otherwise>
                            </c:choose>
                        </li>
                        <ul>

                        </ul>
                        <li>
                            <c:if test="${sessionScope.nameAccount != null}">
                                <div class="nav-item mx-2">
                                    <button style="padding: 0px" class="btn btn-light" type="button"><a
                                            href="/user?action=logout"
                                            class="nav-link active login text-secondary text-nav "
                                            aria-current="page" style="font-size: large">
                                        <i style="position: absolute; right: 190px; width: 30px; padding-top: 5px; color: white"
                                           class="ti-shift-right"></i>
                                        Logout</a></button>
                                </div>
                            </c:if>
                            <c:if test="${sessionScope.nameAccount == null}">
                                <div class="nav-item mx-2" style="font-size: x-large">
                                    <i class="ti-user"></i>
                                    <button style="padding: 0px" class="btn btn-light" type="button"><a
                                            href="/user/login.jsp"
                                            class="nav-link active login text-secondary text-nav"
                                            aria-current="page" style="font-size: large">login</a>
                                    </button>
                                </div>
                            </c:if>
                        </li>
                    </ul>

<body class="container-fluid">
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
                        <button  type="submit" class="user-info-btn"><img src="https://www.shutterstock.com/image-vector/men-vector-icon-10-eps-260nw-1432335572.jpg" height="30px" width="30px" ></button>
                    </form>


                    <c:if test="${sessionScope.nameAccount != null}">
                        <div class="nav-item mx-2">
                            <a style=" text-align:center; color: black; text-decoration:none; position: absolute; right: 420px;top: 15px; font-weight: bolder; font-size:20px"
                               href="#">${sessionScope.nameAccount.userName}</a>
                        </div>
                        <div class="nav-item mx-2">
                            <button style="padding: 0px" class="btn btn-light" type="button"><a href="/user?action=logout" class="nav-link active login text-secondary text-nav " aria-current="page">
                                <i style="position: absolute; right: 190px; width: 30px; padding-top: 5px; color: white"
                                   class="ti-shift-right"></i>
                                Logout</a></button>
                        </div>
                    </c:if>
                    <c:if test="${sessionScope.nameAccount == null}">
                        <div class="nav-item mx-2">
                            <i class="ti-user"></i>
                            <button style="padding: 0px" class="btn btn-light p-2 logout-btn" type="button"><a href="/user/login.jsp"
                                                                                                class="nav-link active login text-secondary text-nav"
                                                                                                aria-current="page">Đăng xuất</a>
                            </button>
                        </div>
                    </c:if>

                    <c:if test="${sessionScope.emailAccount == 'admin@gmail.com'}">
                        <div class="nav-item mx-2">
                            <button style="margin-right: 20px; width: 50px" class="btn btn-danger"><a href="/user"
                                                                                                      style="text-decoration: snow">User List</a>
                            </button>
                        </div>
                    </c:if>


            </div>
        </div>
    </nav>
</header>

<div class="row">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 ">
                <h3>Tìm bài đăng</h3>
                <div class="group-action-header">
                    <div class="form-search">
                        <form action="/post" class="form-search-box">
                            <div class="box-search">
                                <input type="hidden" name="action" value="search">
                                <input type="text" placeholder="Tên công việc, bài đăng bạn muốn tìm ..."
                                       class="form-control input-search ui-autocomplete-input border-hover" name="postTitle"
                                       id="name">
                            </div>
                            <button type="submit" class="btn-success">Tìm kiếm</button>
                        </form>
                    </div>
                    <button type="button" class="text-white bg-opacity-75 add-post-btn">
                        <a class="text-white bg-opacity-75 text-decoration-none" href="/post?action=create"><img src="https://th.bing.com/th/id/R.24a48b9be3aa23cce4a453ea36b97bbc?rik=GVUm1rXB1NMSrA&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_113133.png&ehk=CgO%2bAzFgIbzwbZyDOG6k4xCiN8yiaW0wlQ8XrjKiUB0%3d&risl=&pid=ImgRaw&r=0" height="40px" width="40px" alt="">Thêm mới bài viết</a>
                    </button>

                </div>

            </div>

        </nav>
    </header>
    <div class="row">
        <div class="authentication-outlet">
            <div id="voyager-feed" class="feed-container-theme feed-outlet">
                <div id="ember20" class="self-focused ember-view">
                    <div class="scaffold-layout__tracking-element"></div>
                    <div class="scaffold-layout scaffold-layout--breakpoint-none scaffold-layout--sidebar-main-aside scaffold-layout--single-column scaffold-layout--reflow">
                        <div class="scaffold-layout__inner scaffold-layout-container scaffold-layout-container--reflow ">
                            <div class="scaffold-layout__row scaffold-layout__content scaffold-layout__content--sidebar-main-aside scaffold-layout__content--has-sidebar scaffold-layout__content--has-aside ">
                                <img style="width: 100% ; height: 100%"
                                     src="https://marketplace.canva.com/EAFOaklb8J0/1/0/1135w/canva-blue-illustrated-geometric-job-vacancy-announcement-jBE9IkQ0Ktw.jpg"
                                     alt="">
                                <div>
                                    <img style="height: 100% ; width: 100%"
                                         src="https://i.pinimg.com/736x/6a/73/0b/6a730b31b002c366b6fd8158cf798615.jpg"
                                         alt="">
                                </div>
                                <main class="scaffold-layout__main" aria-label="Main Feed">
                                    <div>
                                        <div class="share-box-feed-entry__closed-share-box artdeco-card">
                                            <!---->
                                            <div class="media-modifiers-drag-and-drop__dropzone">
                                                <li-icon aria-hidden="true" type="plus"
                                                         class="media-modifiers-drag-and-drop__dropzone-icon"
                                                         size="medium">
                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
                                                         data-supported-dps="24x24" fill="currentColor"
                                                         class="mercado-match" width="24" height="24" focusable="false">
                                                        <path d="M21 13h-8v8h-2v-8H3v-2h8V3h2v8h8z"></path>
                                                    </svg>
                                                </li-icon>
                                            </div>
                                            <div class="share-box-feed-entry__top-bar">
                                                <c:choose>
                                                    <c:when test="${sessionScope.emailAccount1.email != 'admin@gmail.com' }">
                                                        <form action="/UsersServlet">
                                                            <input type="hidden" name="email"
                                                                   value="${sessionScope.emailAccount1.email}">
                                                            <button type="submit">
                                                                <div class="share-box-feed-entry__avatar">
                                                                    <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                                                         alt="Visit profile for Danh Nguyen"
                                                                         id="ember41"
                                                                         class="EntityPhoto-circle-3 ghost-person ember-view">
                                                                </div>
                                                            </button>
                                                        </form>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <p></p>
                                                    </c:otherwise>
                                                </c:choose>

        </div>
        <div class="row p-2 text-dark bg-opacity-10">
            <h4>Các công ty tuyển dụng hàng đầu </h4>
            <div class="row col-5">


                                                <c:choose>
                                                    <c:when test="${sessionScope.emailAccount1.email != 'admin@gmail.com' }">
                                                        <%--                                                        <a class="btn btn-info" href="/post?action=create&emailUser=${sessionScope.emailAccount1.email}" role="button">Tạo--%>
                                                        <%--                                                            mới</a>--%>
                                                        <button id="ember42"
                                                                class="artdeco-button artdeco-button--muted artdeco-button--4 artdeco-button--tertiary ember-view share-box-feed-entry__trigger">
                                                            <!---->
                                                            <span class="artdeco-button__text"> <a
                                                                    href="/post?action=create&emailUser=${sessionScope.emailAccount1.email}"
                                                                    style="text-decoration: none">Start a post</a>
                                                </span>
                                                        </button>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <p></p>
                                                    </c:otherwise>
                                                </c:choose>
                                                <!--                                            thằng button ni khi click vào thì dẫn cho hắn đến trang tạo bài đăng -->
                                            </div>
                                        </div>
                                        <%--                                       <p>-------------------------------------------------------------</p>--%>

                                        <%--                                        <p>------------------------------------------------------------------------</p>--%>
                                    </div>

                                </main>
                                <div>
                                    <img style="width: 100% ; height: 100%"
                                         src="https://images.template.net/wp-content/uploads/2019/06/Job-Advertisement-Poster-Template.jpg"
                                         alt="">
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<footer class="li-footer bg-transparent w-full ">
    <ul class="li-footer__list flex flex-wrap flex-row items-start justify-start w-full h-auto min-h-[50px] my-[0px] mx-auto py-3 px-2 papabear:w-[1128px] papabear:p-0">

        <li class="li-footer__item font-sans text-xs text-color-text-low-emphasis flex flex-shrink-0 justify-start p-1 relative w-50% papabear:justify-center papabear:w-auto">

            <span class="sr-only">SearchJob</span>
            <img style="width: 34px ; height: 19px"
                 src="https://www.shutterstock.com/image-vector/job-searching-icon-260nw-1224749530.jpg" alt="">
            <span class="li-footer__copy-text flex items-center">&copy; 2023</span>
        </li>
        <li class="li-footer__item font-sans text-xs text-color-text-low-emphasis flex flex-shrink-0 justify-start p-1 relative w-50% papabear:justify-center papabear:w-auto">
            <a class="li-footer__item-link flex items-center font-sans text-xs font-bold text-color-text-low-emphasis hover:text-color-link-hover focus:text-color-link-focus"
               data-tracking-control-name="homepage-jobseeker_footer-about" data-tracking-will-navigate>
                About
            </a>
        </li>
        <li class="li-footer__item font-sans text-xs text-color-text-low-emphasis flex flex-shrink-0 justify-start p-1 relative w-50% papabear:justify-center papabear:w-auto">
            <a class="li-footer__item-link flex items-center font-sans text-xs font-bold text-color-text-low-emphasis hover:text-color-link-hover focus:text-color-link-focus"
               data-tracking-control-name="homepage-jobseeker_footer-accessibility" data-tracking-will-navigate>
                Accessibility
            </a>
        </li>
        <li class="li-footer__item font-sans text-xs text-color-text-low-emphasis flex flex-shrink-0 justify-start p-1 relative w-50% papabear:justify-center papabear:w-auto">
            <a class="li-footer__item-link flex items-center font-sans text-xs font-bold text-color-text-low-emphasis hover:text-color-link-hover focus:text-color-link-focus"
               data-tracking-control-name="homepage-jobseeker_footer-user-agreement" data-tracking-will-navigate>
                User Agreement
            </a>
        </li>
        <li class="li-footer__item font-sans text-xs text-color-text-low-emphasis flex flex-shrink-0 justify-start p-1 relative w-50% papabear:justify-center papabear:w-auto">
            <a class="li-footer__item-link flex items-center font-sans text-xs font-bold text-color-text-low-emphasis hover:text-color-link-hover focus:text-color-link-focus"
               data-tracking-control-name="homepage-jobseeker_footer-privacy-policy" data-tracking-will-navigate>
                Privacy Policy
            </a>
        </li>

        <!---->
        <li class="li-footer__item font-sans text-xs text-color-text-low-emphasis flex flex-shrink-0 justify-start p-1 relative w-50% papabear:justify-center papabear:w-auto">
            <a class="li-footer__item-link flex items-center font-sans text-xs font-bold text-color-text-low-emphasis hover:text-color-link-hover focus:text-color-link-focus"
               data-tracking-control-name="homepage-jobseeker_footer-cookie-policy" data-tracking-will-navigate>
                Cookie Policy
            </a>
        </li>
        <li class="li-footer__item font-sans text-xs text-color-text-low-emphasis flex flex-shrink-0 justify-start p-1 relative w-50% papabear:justify-center papabear:w-auto">
            <a class="li-footer__item-link flex items-center font-sans text-xs font-bold text-color-text-low-emphasis hover:text-color-link-hover focus:text-color-link-focus"
               data-tracking-control-name="homepage-jobseeker_footer-copyright-policy" data-tracking-will-navigate>
                Copyright Policy
            </a>
        </li>
        <li class="li-footer__item font-sans text-xs text-color-text-low-emphasis flex flex-shrink-0 justify-start p-1 relative w-50% papabear:justify-center papabear:w-auto">
            <a class="li-footer__item-link flex items-center font-sans text-xs font-bold text-color-text-low-emphasis hover:text-color-link-hover focus:text-color-link-focus"
               data-tracking-control-name="homepage-jobseeker_footer-brand-policy" data-tracking-will-navigate>
                Brand Policy
            </a>
        </li>
        <li class="li-footer__item font-sans text-xs text-color-text-low-emphasis flex flex-shrink-0 justify-start p-1 relative w-50% papabear:justify-center papabear:w-auto">
            <a class="li-footer__item-link flex items-center font-sans text-xs font-bold text-color-text-low-emphasis hover:text-color-link-hover focus:text-color-link-focus"
               data-tracking-control-name="homepage-jobseeker_footer-guest-controls" data-tracking-will-navigate>
                Guest Controls
            </a>
        </li>
        <li class="li-footer__item font-sans text-xs text-color-text-low-emphasis flex flex-shrink-0 justify-start p-1 relative w-50% papabear:justify-center papabear:w-auto">
            <a class="li-footer__item-link flex items-center font-sans text-xs font-bold text-color-text-low-emphasis hover:text-color-link-hover focus:text-color-link-focus"
               data-tracking-control-name="homepage-jobseeker_footer-community-guide" data-tracking-will-navigate>
                Community Guidelines
            </a>
        </li>
    </ul>
</footer>
<p>
    -------------------------------------------------------------------------------------------------------------------------</p>


<%--<a name="" id="" class="btn btn-primary" href="/post" role="button">Trang chủ</a>--%>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <table id="tableStudent" class="table table-striped table-bordered" style="width:100%">
                <thead>
                <tr>
                    <th>NO</th>
                    <th>Bài đăng</th>
                    <th>Mô tả</th>
                    <th>Ngày đăng</th>
                    <th>Hình ảnh</th>
                    <th>Thể loại</th>
                    <th>Người đăng</th>
                    <th></th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="post" items="${postList}" varStatus="no">
                    <tr>
                        <td scope="row">${no.count}</td>
                        <td>${post.getPostTitle()}</td>
                        <td>${post.getDescribe()}</td>
                        <td>${post.getDateSubmitted()}</td>
                        <td><img src="${post.getImg()}" width="100px" height="100px"></td>
                        <td>${post.getPostCategory()}</td>
                        <td>${post.getUserName()}</td>
                        <c:choose>
                            <c:when test="${post.getEmailUserName()==sessionScope.emailAccount1.email or sessionScope.emailAccount1.email== 'admin@gmail.com' }">
                                <td>
                               <a class="btn btn-info"
                                       href="/post?action=update&email=${post.getEmailUserName()}&idPost=${post.getIdPost()}"
                                       role="button">Update</a>
                                </td>

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

                    </td>
                </h5>
                <h6>Ngành: ${post.getPostCategory()}</h6>
                <h6>Người đăng: ${post.getUserName()}</h6>


                            </c:when>
                            <c:otherwise>
                                <p></p>
                            </c:otherwise>
                        </c:choose>
                        <c:choose>

                            <c:when test="${post.getEmailUserName()==sessionScope.emailAccount1.email}">
                                <td>
                                    <button onclick="deleteById(${post.getIdPost()})" type="button"
                                            class="btn btn-primary btn-lg"
                                            data-bs-toggle="modal" data-bs-target="#modelId">
                                        Xóa
                                    </button>
                                </td>
                            </c:when>
                            <c:otherwise>
                                <p></p>
                            </c:otherwise>


                        </c:choose>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            </tr>
            <tr>
                <td>${post.getDescribe()}</td>
            </tr>
        </div>
        <div class="col-2 ">
            <td><img src="${post.getImg()}" width="280px" height="360px" alt="unavailable"></td>

        </div>
    </div>
</div>
<script>
    function deleteById(id) {
        document.getElementById("idDelete").value = id;
    }
</script>
<!-- Modal -->
<div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="modelTitleId"></h4>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body">
                Bạn có muốn xóa bài viết không?
            </div>
            <div class="modal-footer">
                <form action="/post">
                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="idPost" id="idDelete">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Xóa</button>
                </form>

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
</div>
<p>
    ---------------------------------------------------------------------------------------------------------------------</p>
<li>
    <c:if test="${sessionScope.emailAccount == 'admin@gmail.com'}">
        <a name="" id="" class="btn btn-primary" href="/user"
           role="button">Danh sách người dùng</a>
        <a name="" id="" class="btn btn-primary" href="/categoryServlet"
           role="button">Thể loại</a>
    </c:if>
</li>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        $('#tableStudent').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 2
        });
    });
</script>
</body>
</html>