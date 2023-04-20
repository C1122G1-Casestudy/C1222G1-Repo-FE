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
  <a class="btn btn-primary" href="/PostServlet?action=create">Thêm mới</a>
</button>

<form action="/post">
  <div class="btn btn-primary">
    <label for="name">Post Title</label>
    <input type="hidden" name="action" value="search">
    <input type="text" class="form-control" name="postTitle" id="name">
  </div>
  <button type="submit" class="btn btn-primary">Tìm kiếm</button>
</form>

<table class="table">
  <thead>
  <tr>
    <th>ID</th>
    <th>POST TITLE</th>
    <th>DESCRIBE</th>
    <th>DATE SUBMITTED</th>
    <th>IMG</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="post" items="${postList}">
    <tr>
      <td scope="row">${post.getIdPost()}</td>
      <td>${post.getPostTitle()}</td>
      <td>${post.getDescribe()}</td>
      <td>${post.getDateSubmitted()}</td>
      <td>${post.getImg()}</td>
      <td><img src="../imgpost/${post.getImg()}" width="50px" height="80px" alt=""/></td>
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