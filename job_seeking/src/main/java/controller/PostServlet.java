package controller;


import dto.PostDTO;
import model.Category;
import model.Post;
import model.User;
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
    private IUserService iUserService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                List<User> userList = iUserService.findAllUser();
                String emailUser = request.getParameter("emailUser");
                List<Category> categoryList = iCategoryService.findAll();
                request.setAttribute("nameUser",emailUser);
                request.setAttribute("categoryList",categoryList);
                request.setAttribute("userList",userList);
//                request.setAttribute("userList",userList);
                request.getRequestDispatcher("/post/create.jsp").forward(request, response);
//                response.sendRedirect("/post/create.jsp");
                break;
            case "delete":
                int idDelete = Integer.parseInt(request.getParameter("idPost"));
                iPostService.deletePostById(idDelete);
                response.sendRedirect("/post");
                break;
            case "search":
//                String postTitle=request.getParameter("postTitle");
//                request.setAttribute("postList",iPostService.findByName(postTitle));
//                request.getRequestDispatcher("/post/list_post.jsp").forward(request,response);
                searchPost(request, response);
                break;
            case "update":
                int idUpdate = Integer.parseInt(request.getParameter("idPost"));
                String emailUpdate = request.getParameter("email");
                PostDTO postDTO = iPostService.findToUpdatePostByIdPostAndEmail(idUpdate,emailUpdate);
                request.setAttribute("post", postDTO);
                request.setAttribute("categoryList",iCategoryService.findAll());
                request.getRequestDispatcher("/post/update.jsp").forward(request, response);
                break;
            default:
                request.setAttribute("postList", iPostService.getAll());
                request.getRequestDispatcher("/post/list_post.jsp").forward(request, response);
        }
    }

    private void searchPost(HttpServletRequest request, HttpServletResponse response) {
        String postTitle = request.getParameter("postTitle");
        List<PostDTO> postList = iPostService.findByName(postTitle);
        if (postList.isEmpty()){
            request.setAttribute("postList",iPostService.findByName(postTitle));
            try{
               request.getRequestDispatcher("/post/list_post.jsp").forward(request, response);
            }catch (ServletException | IOException exception){
                exception.printStackTrace();
            }
        }else {
            try {
                request.setAttribute("postList",postList);
                request.getRequestDispatcher("/post/list_post.jsp").forward(request, response);
            }catch (ServletException | IOException exception){
                exception.printStackTrace();
            }
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
                String postTitle = request.getParameter("postTitle");
                String describe = request.getParameter("describe");
                String dateSubmitted = request.getParameter("dateSubmitted");
                String img = request.getParameter("img");
                int idUser = Integer.parseInt(request.getParameter("idUser"));
                int idCategory = Integer.parseInt(request.getParameter("idCategory"));
                Post post = new Post( postTitle, describe, dateSubmitted, img, idCategory,idUser);
                iPostService.create(post);
                response.sendRedirect("/post");
                break;

            case "update":
                updatePost(request, response);
                break;
        }
    }

    private void updatePost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int idPostToUpdate = Integer.parseInt(request.getParameter("idPost"));
        String postTitleToUpdate = request.getParameter("postTitle");
        String describeToUpdate = request.getParameter("describe");
        String dateSubmittedToUpdate = request.getParameter("dateSubmitted");
        String imgToUpdate = request.getParameter("img");
        int postCategoryToUpdate= Integer.parseInt(request.getParameter("idCategory"));
        Post postToUpdate = new Post(idPostToUpdate,postTitleToUpdate,describeToUpdate,dateSubmittedToUpdate,imgToUpdate,postCategoryToUpdate);
        iPostService.updateByIdAndEmail(postToUpdate);
        response.sendRedirect("/post");
    }
}
