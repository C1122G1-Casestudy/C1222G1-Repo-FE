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
public class AdminServlet extends HttpServlet {
    private IUserService iUserService = new UserService();

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
            case "update":
                updateUserListOfAdmin(request, response);
                break;
            case "searchByName":
                searchUserByNameOfAdmin(request, response);
                break;
            case "delete":
                deleteUserOfAdmin(request, response);
                break;
            default:
                showListUser(request, response);
//                List<User> userList = iUserService.findAllUser();
//                request.setAttribute("userList", userList);
//                request.getRequestDispatcher("/user/list_user.jsp").forward(request, response);
                break;
        }
    }


    /**
     * Function: delete User of admin
     * Create: HungNT
     * Date create: 19/04/2023
     */

    private void deleteUserOfAdmin(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int idToDelete = Integer.parseInt(request.getParameter("idToDelete"));
        iUserService.deleteById(idToDelete);
        response.sendRedirect("/user");
    }
    /**
     * Function: search User of admin
     * Create: HungNT
     * Date create: 19/04/2023
     */
    private void searchUserByNameOfAdmin(HttpServletRequest request, HttpServletResponse response)  {
        String nameToSearch = request.getParameter("nameToSearch");
        List<User> userListByName = iUserService.searchByName(nameToSearch);
        request.setAttribute("userList",userListByName);
        try {
            request.getRequestDispatcher("/user/list_user.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Function: update User of admin
     * Create: HungNT
     * Date create: 19/04/2023
     */
    private void updateUserListOfAdmin(HttpServletRequest request, HttpServletResponse response)  {
        int idToUpdate = Integer.parseInt(request.getParameter("idToUpdate"));
        User userToUpdate = iUserService.findIdToUpdate(idToUpdate);
        request.setAttribute("userToUpdate",userToUpdate);
        try {
            request.getRequestDispatcher("/user/updateUser.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Function: display detail information of user
     * Create: DaoPTA
     * Date create: 07/04/2023
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
     */
    private void showListUser(HttpServletRequest request, HttpServletResponse response) throws IOException{
        HttpSession httpSession = request.getSession();
        if (httpSession.getAttribute("emailAccount") == null) {
            httpSession.setAttribute("emailAccount", "");
        }

        if (!httpSession.getAttribute("emailAccount").equals("admin@gmail.com")) {
                response.sendRedirect("/user");
        }else {
            try{
                List<User> userList = iUserService.findAllUser();
                request.setAttribute("userList", userList);
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
     */
    private void logout(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        session.removeAttribute("nameAccount");
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("email") || cookie.getName().equals("password")) {
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
            request.getRequestDispatcher("/view/register.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "login":
                login(request, response);
                break;
            case "register":
                register(request, response);
                break;
            case "update":
                updateUserOfAdmin(request, response);
                break;
            default:
                break;
        }
    }
    /**
     * Function: Update use of Admin
     * Create: HungNT
     * Date create: 19/04/2023
     *
     * @param request
     * @param response
     */
    private void updateUserOfAdmin(HttpServletRequest request, HttpServletResponse response) {
        int idToUpdate = Integer.parseInt(request.getParameter("idToUpdate"));
        String nameToUpdate = request.getParameter("nameToUpdate");
        String phoneNumberToUpdate = request.getParameter("phoneNumberToUpdate");
        User user = new User(idToUpdate,nameToUpdate,phoneNumberToUpdate);
        iUserService.updateUserOfAdmin(user);
        try {
            response.sendRedirect("/user");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Function: register form
     * Create: DaoPTA
     * Date create: 17/04/2023
     *
     * @param request
     * @param response
     */
    private void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phoneNum = request.getParameter("phoneNum");
        String password = request.getParameter("password");
        User user = new User(name, email, phoneNum, password);
        List<User> userList = iUserService.findAllUser();
        boolean flag = true;
        for (int i = 0; i < userList.size(); i++) {
            if (userList.get(i).getEmail().equals(email)) {
                flag = false;
                request.setAttribute("registerFail", "Địa chỉ email này đã tồn tại. Vui lòng thử lại với địa chỉ email khác.");
                request.getRequestDispatcher("/user/register.jsp").forward(request, response);
                break;
            }
        }
        if (flag) {
            iUserService.register(user);
            response.sendRedirect("/user/login.jsp");
        }
    }

    private void login(HttpServletRequest request, HttpServletResponse response) {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = iUserService.login(email, password);
        if (user == null) {
            try {
                request.setAttribute("loginFail", "Đăng nhập thất bại");
                request.getRequestDispatcher("/user/login.jsp").forward(request, response);
            } catch (IOException | ServletException e) {
                e.printStackTrace();
            }
        } else {
            try {
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("emailAccount", email);
                httpSession.setAttribute("passwordAccount", password);
                Cookie cookie1 = new Cookie("email", user.getEmail());
                cookie1.setMaxAge(3600);
                response.addCookie(cookie1);
                Cookie cookie2 = new Cookie("password", user.getPassWord());
                cookie2.setMaxAge(3600);
                response.addCookie(cookie2);
                if (user.getEmail().equals("admin@gmail.com")) {
                    response.sendRedirect("/user/list_user.jsp");
                } else {
                    response.sendRedirect("/post/list_post.jsp");
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
