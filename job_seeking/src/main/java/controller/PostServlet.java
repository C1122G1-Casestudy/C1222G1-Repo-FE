package controller;


import dto.PostDTO;
import model.Category;
import model.Post;
import service.category.CategoryService;
import service.category.ICategoryService;
import service.post.IPostService;
import service.post.PostService;
import service.user.IUserService;
import service.user.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "PostServlet", value = "/post")
public class PostServlet extends HttpServlet {
    private IPostService iPostService = new PostService();
    private ICategoryService iCategoryService = new CategoryService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                List<Category> categoryList = iCategoryService.findAll();
                request.setAttribute("categoryList",categoryList);
//                request.setAttribute("userList",userList);
                request.getRequestDispatcher("/post/create.jsp").forward(request, response);
//                response.sendRedirect("/post/create.jsp");
                break;
            case "delete":
                int idDelete = Integer.parseInt(request.getParameter("id"));
                iPostService.deletePost(idDelete);
                response.sendRedirect("/post");
                break;
            case "search":
//                String postTitle=request.getParameter("postTitle");
//                request.setAttribute("postList",iPostService.findByName(postTitle));
//                request.getRequestDispatcher("/post/list_post.jsp").forward(request,response);
                String postTitle = request.getParameter("postTitle");
                List<PostDTO> postList = iPostService.findByName(postTitle);
                if (postList.isEmpty()){
                    request.setAttribute("postList",iPostService.findByName(postTitle));
                    try{
                       request.getRequestDispatcher("/post/list_post.jsp").forward(request,response);
                    }catch (ServletException | IOException exception){
                        exception.printStackTrace();
                    }
                }else {
                    try {
                        request.setAttribute("postList",postList);
                        request.getRequestDispatcher("/post/list_post.jsp").forward(request,response);
                    }catch (ServletException | IOException exception){
                        exception.printStackTrace();
                    }
                }
                break;
            case "update":
                List<Category> categoryList1 = iCategoryService.findAll();
                request.setAttribute("categoryList",categoryList1);
                int idUpdate = Integer.parseInt(request.getParameter("id"));
                Post post = iPostService.findById(idUpdate);
                request.setAttribute("postUpdate", post);
                request.getRequestDispatcher("/post/update.jsp").forward(request, response);
                break;
            default:
                request.setAttribute("postList", iPostService.getAll());
                request.getRequestDispatcher("/post/list_post.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
//                int idPost = Integer.parseInt(request.getParameter("idPost"));
                String postTitle = request.getParameter("postTitle");
                String describe = request.getParameter("describe");
                String dateSubmitted = request.getParameter("dateSubmitted");
                String img = request.getParameter("img");
                int idCategory = Integer.parseInt(request.getParameter("idCategory"));
//                int idUser = Integer.parseInt(request.getParameter("idUser"));
                Post post = new Post( postTitle, describe, dateSubmitted, img, idCategory);
                iPostService.create(post);
//                request.setAttribute("postList", iPostService.findAll());
//                request.getRequestDispatcher("/post/list_post.jsp").forward(request, response);
                response.sendRedirect("/post");
                break;

            case "update":
                int idUpdate = Integer.parseInt(request.getParameter("id"));
                String postTitleUpdate = request.getParameter("postTitle");
                String describeUpdate = request.getParameter("describe");
                String dateSubmittedUpdate = request.getParameter("dateSubmitted");
                String imgUpdate = request.getParameter("img");
                int idCategoryUpdate = Integer.parseInt(request.getParameter("idCategory"));
                Post post1 = new Post(idUpdate,postTitleUpdate, describeUpdate, dateSubmittedUpdate, imgUpdate, idCategoryUpdate);
                iPostService.update(idUpdate, post1);
                response.sendRedirect("/post");
                break;
        }
    }
}
