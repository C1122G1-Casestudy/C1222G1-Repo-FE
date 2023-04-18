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
</head>
<body>
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
  <button type="button" class="btn btn-primary">
    <a class="btn btn-primary" href="/post/create.jsp">CREATE</a>
  </button>
  <form action="/PostServlet">
    <div class="btn btn-primary">
      <label for="name">Post Title</label>
      <input type="hidden" name="action" value="postTitle">
      <input type="text" class="form-control" name="name" id="name">
    </div>
    <button type="submit" class="btn btn-primary">
      Search
    </button>
  </form>

  <c:forEach var="post" items="${postList}">
    <tr>
      <td scope="row">${post.getIdPost()}</td>
      <td>${post.getPostTitle()}</td>
      <td>${post.getDescribe()}</td>
      <td>${post.getDateSubmitted()}</td>
      <td>${post.getImg()}</td>
      <td>
        <button><a class="btn btn-danger" type="button" data-bs-target="#deleteModal${post.idPost}" >DELETE</a></button>
      </td>
      <!-- Modal -->
      <form action="/PostServlet" method="post">
        <div class="modal fade" id="deleteModal${post.idPost}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Xóa bài đăng</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  <span aria-hidden="true">&times;</span>
              </div>
              <input type="hidden" name="action" value="delete">
              <input type="hidden" name="idPost" value="${post.idPost}">
              <div class="modal-body">
                Bạn có muốn xóa bài đăng ${post.getPostTitle()}
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                <button type="submit" class="btn btn-primary">Xóa</button>
              </div>
            </div>
          </div>
        </div>
      </form>
      <td>
        <button><a class="btn btn-primary" href="/PostServlet?action=update&id=${post.getIdPost()}">EDIT</a></button>
      </td>
    </tr>
    <tr>
      <td scope="row"></td>
      <td></td>
      <td></td>
    </tr>
  </c:forEach>
  </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>