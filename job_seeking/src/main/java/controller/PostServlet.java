package controller;

import model.Post;
import service.post.IPostService;
import service.post.PostService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "PostServlet", value = "/post")
public class PostServlet extends HttpServlet {
    private IPostService iPostService = new PostService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                request.getRequestDispatcher("/post/create.jsp").forward(request, response);
                break;
            case "delete":
                int idDelete = Integer.parseInt(request.getParameter("id"));
                iPostService.deletePost(idDelete);
                response.sendRedirect("/post");
                break;
            case "search":
                String postTitle=request.getParameter("postTitle");
                request.setAttribute("postList",iPostService.findByName(postTitle));
                request.getRequestDispatcher("/post/list_post.jsp").forward(request,response);
                break;
            case "update":
                int idUpdate = Integer.parseInt(request.getParameter("id"));
                Post post = iPostService.findById(idUpdate);
                request.setAttribute("post", post);
                request.getRequestDispatcher("/post/update.jsp").forward(request, response);
                break;
            default:
                request.setAttribute("postList", iPostService.findAll());
                request.getRequestDispatcher("/post/list_post.jsp").forward(request, response);
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
//                int idPost = Integer.parseInt(request.getParameter("idPost"));
                String postTitle = request.getParameter("postTitle");
                String describe = request.getParameter("describe");
                String dateSubmitted = request.getParameter("date");
                String img = request.getParameter("img");
//        String category = request.getParameter("category");
                Post post = new Post(postTitle, describe, dateSubmitted, img);
                iPostService.create(post);
                request.setAttribute("post", iPostService.findAll());
                request.getRequestDispatcher("/post/list_post.jsp").forward(request, response);
                break;
            case "update":
                int idUpdate = Integer.parseInt(request.getParameter("id"));
                String postTitleUpdate = request.getParameter("postTitle");
                String describeUpdate = request.getParameter("describe");
                String dateSubmittedUpdate = request.getParameter("dateSubmitted");
                String imgUpdate = request.getParameter("img");
                Post post1 = new Post(idUpdate, postTitleUpdate, describeUpdate, dateSubmittedUpdate, imgUpdate);
                iPostService.update(idUpdate, post1);
                response.sendRedirect("/post");
                break;
        }
    }
}
