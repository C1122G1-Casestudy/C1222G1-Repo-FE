package controller;

import model.User;
import service.user.IUserService;
import service.user.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/user")
public class UserServlet extends HttpServlet {
    IUserService iUserService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "register":
                showCreate(request, response);
                break;
            case "logout":
                logout(request, response);
                break;
            case "view":
                showViewUser(request, response);
                break;
            default:
                showListUser(request, response);
                break;
        }
    }

    /**
     * Function: display detail information of user
     * Create: DaoPTA
     * Date create: 07/04/2023
     *
     * @param request
     * @param response
     */
    private void showViewUser(HttpServletRequest request, HttpServletResponse response) {
        int idUser = Integer.parseInt(request.getParameter("idUser"));
        User user = iUserService.findUserById(idUser);
        request.setAttribute("user", user);
        try {
            request.getRequestDispatcher("/user/view_user.jsp").forward(request, response);
        } catch (ServletException | IOException exception) {
            exception.printStackTrace();
        }
    }

    /**
     * Function: display list user
     * Create: DaoPTA
     * Date create: 07/04/2023
     *
     * @param request
     * @param response
     */
    private void showListUser(HttpServletRequest request, HttpServletResponse response) {
        HttpSession httpSession = request.getSession();
        if (httpSession.getAttribute("emailAccount") == null) {
            httpSession.setAttribute("emailAccount", "");
        }
        if (!httpSession.getAttribute("emailAccount").equals("admin@gmail.com")){
            try {
                response.sendRedirect("/post");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }else {
            List<User> userList = iUserService.findAllUser();
            request.setAttribute("userList", userList);
            try {
                request.getRequestDispatcher("/user/list_user.jsp").forward(request, response);
            }catch (ServletException | IOException exception){
                exception.printStackTrace();
            }
        }
    }

    /**
     * Function: log out
     * Create: DaoPTA
     * Date create: 07/04/2023
     *
     * @param request
     * @param response
     */
    private void logout(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        session.removeAttribute("nameAccount");
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("email") || cookie.getName().equals("passWord")) {
                    cookie.setValue("");
                    cookie.setPath("/");
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                }
            }
        }
        try {
            response.sendRedirect("/post/list_post.jps");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Function: show register form
     * Create: DaoPTA
     * Date create: 07/04/2023
     *
     * @param request
     * @param response
     */
    private void showCreate(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("/view/regis.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
