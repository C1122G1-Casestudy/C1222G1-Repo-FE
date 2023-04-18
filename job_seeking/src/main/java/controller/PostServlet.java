package controller;

import model.Category;
import model.Post;
import service.IPostService;
import service.PostService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PostServlet", value = "/PostServlet")
public class PostServlet extends HttpServlet {
    IPostService iPostService = new PostService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreatePost(request, response);
                break;
            case "save":
                showSavePost(request, response);
            case "delete":
                deletePost(request, response);
            case "update":
                showUpdatePost(request, response);
                break;
            default:
                request.setAttribute("postList", iPostService.findAll());
                request.getRequestDispatcher("/post/list_post.jsp").forward(request, response);
        }
    }

    private void showUpdatePost(HttpServletRequest request, HttpServletResponse response) {
        int idPost = Integer.parseInt(request.getParameter("idPost"));
        Post post = iPostService.findById(idPost);
        if (post == null) {
            try {
                response.sendRedirect("/post/error-404.jsp");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } else {
            request.setAttribute("post", post);
            try {
                request.getRequestDispatcher("/post/update.jsp").forward(request, response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    private void deletePost(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("idPost"));
        iPostService.deletePost(id);
        List<Post> computerList = iPostService.findAll();
        request.setAttribute("postList", computerList);
        try {
            request.getRequestDispatcher("/post/list_post.jsp").forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showSavePost(HttpServletRequest request, HttpServletResponse response) {
    }

    private void showCreatePost(HttpServletRequest request, HttpServletResponse response) {
        try {
            response.sendRedirect("/post/list_post.jsp");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createPost(request, response);
            case "search":
                searchByName(request, response);
                break;
        }
    }

    private void searchByName(HttpServletRequest request, HttpServletResponse response) {
        String post = request.getParameter("post");
        List<Post> postList = iPostService.findByName(post);

        if (postList.isEmpty()) {
            request.setAttribute("message", "Not Found");
            try {
                request.getRequestDispatcher("/post/list_post.jsp").forward(request, response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } else {
            try {
                request.setAttribute("postList", postList);
                request.getRequestDispatcher("/post/list_post.jsp").forward(request, response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    private void createPost(HttpServletRequest request, HttpServletResponse response) {
        int idPost = 1;
        String postTitle = request.getParameter("postTitle");
        String describe = request.getParameter("describe");
        String dateSubmitted = request.getParameter("dateSubmitted");
        String img = request.getParameter("img");
        int idCategory = Integer.parseInt(request.getParameter("idCategory"));
//        Category category = request.getParameter("category");
//        int idUse = Integer.parseInt(request.getParameter("idUse"));
        Post post = new Post(idPost, postTitle, describe, dateSubmitted, img, idCategory);
        iPostService.create(post);
        request.setAttribute("message", "Create success");
        request.setAttribute("post", post);
        try {
            request.getRequestDispatcher("/post/create.jsp").forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        request.setAttribute("post", post);
    }
}
