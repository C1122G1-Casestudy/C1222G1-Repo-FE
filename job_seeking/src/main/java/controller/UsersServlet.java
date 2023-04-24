package controller;

import dto.UserDTO;
import service.user.IUserService;
import service.user.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UsersServlet", value = "/UsersServlet")
public class UsersServlet extends HttpServlet {
    IUserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
          UserDTO userDTO = userService.disPlayUserOTD(email);
          request.setAttribute("user",userDTO);
          request.getRequestDispatcher("/user/view_user.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        UserDTO userDTO = userService.disPlayUserOTD(email);
        request.setAttribute("user",userDTO);
        request.getRequestDispatcher("/user/view_user.jsp").forward(request,response);
    }
    }

