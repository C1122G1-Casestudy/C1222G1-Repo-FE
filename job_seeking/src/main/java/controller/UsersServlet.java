package controller;

import dto.PostDTO;
import dto.UserDTO;
import model.Post;
import repository.post.IPostRepository;
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

@WebServlet(name = "UsersServlet", value = "/UsersServlet")
public class UsersServlet extends HttpServlet {
    IPostService iPostService = new PostService();
    ICategoryService iCategoryService = new CategoryService();
    IUserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "update":
                int idUpdate = Integer.parseInt(request.getParameter("idPost"));
                String emailUpdate = request.getParameter("email");
                PostDTO postDTO = iPostService.findToUpdatePostByIdPostAndEmail(idUpdate,emailUpdate);
                request.setAttribute("post", postDTO);
                request.setAttribute("categoryList",iCategoryService.findAll());
                request.getRequestDispatcher("/post/update.jsp").forward(request, response);
                break;
            case "delete":
                deletePost(request, response);
                break;
            default:
                String email = request.getParameter("email");
                List<UserDTO> userDTOList = userService.getPostByEmail(email);
                UserDTO userDTO = userService.disPlayUserOTD(email);
                request.setAttribute("userDTOList",userDTOList);
                request.setAttribute("user",userDTO);
                request.getRequestDispatcher("/user/view_user.jsp").forward(request,response);
        }

    }

    private void deletePost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idDelete = Integer.parseInt(request.getParameter("idPost"));
        iPostService.deletePostById(idDelete);
        String email = request.getParameter("email");
        List<UserDTO> userDTOList = userService.getPostByEmail(email);
        UserDTO userDTO = userService.disPlayUserOTD(email);
        request.setAttribute("userDTOList",userDTOList);
        request.setAttribute("user",userDTO);
        request.getRequestDispatcher("/user/view_user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action){
            case "update":
                updatePost(request, response);
                break;
            default:
                String email = request.getParameter("email");
                List<UserDTO> userDTOList = userService.getPostByEmail(email);
                UserDTO userDTO = userService.disPlayUserOTD(email);
                request.setAttribute("userDTOList",userDTOList);
                request.setAttribute("user",userDTO);
                request.getRequestDispatcher("/user/view_user.jsp").forward(request,response);
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
        String email = request.getParameter("email");
        List<UserDTO> userDTOList = userService.getPostByEmail(email);
        UserDTO userDTO = userService.disPlayUserOTD(email);
        request.setAttribute("userDTOList",userDTOList);
        request.setAttribute("user",userDTO);
        try {
            request.getRequestDispatcher("/user/view_user.jsp").forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        }
    }
    }

