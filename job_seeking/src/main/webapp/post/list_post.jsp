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
</head>
<body>

<button type="button" class="btn btn-primary">
  <a class="btn btn-primary" href="/post?action=create">Thêm mới</a>
</button>
<form action="/post">
  <div class="btn btn-primary">
    <label for="name">Post Title</label>
    <input type="hidden" name="action" value="search">
    <input type="text" class="form-control" name="postTitle" id="name">

  </div>
  <button type="submit" class="btn btn-primary">Tìm kiếm</button>
</form>
<div>
  <c:if test="${sessionScope.nameAccount != null}">
    <div class="nav-item mx-2">
      <a style=" text-align:center; color: black; text-decoration:none; position: absolute; right: 420px;top: 15px; font-weight: bolder; font-size:20px"
         href="#">${sessionScope.nameAccount.name}</a>
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
      <button style="padding: 0px" class="btn btn-light" type="button"><a href="/user/login.jsp"
                                                                          class="nav-link active login text-secondary text-nav"
                                                                          aria-current="page">Logout</a>
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
</div>

<table class="table">
  <thead>
  <tr>
    <th>MÃ</th>
    <th>TIÊU ĐỀ BÀI ĐĂNG</th>
    <th>MÔ TẢ</th>
    <th>NGÀY ĐĂNG</th>
    <th>HÌNH ẢNH</th>
    <th>THỂ LOẠI</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="post" items="${postList}">
    <tr>
      <td scope="row">${post.getIdPost()}</td>
      <td>${post.getPostTitle()}</td>
      <td>${post.getDescribe()}</td>
      <td>${post.getDateSubmitted()}</td>
      <td><img src="${post.getImg()}" width="120px" height="150px" alt="unavailable"></td>
      <td>${post.getPostCategory()}</td>

      <td>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal${post.idPost}">
          Xóa
        </button>
      </td>
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
      <td>
        <button>
          <a href="/post?action=update&id=${post.getIdPost()}">Sửa</a>
        </button>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>

</body>
</html>