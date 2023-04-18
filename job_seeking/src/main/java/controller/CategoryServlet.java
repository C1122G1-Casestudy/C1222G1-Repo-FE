package controller;

import model.Category;
import service.category.CategoryService;
import service.category.ICategoryService;
import sun.security.krb5.internal.APRep;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CategoryServlet", value = "/categoryServlet")
public class CategoryServlet extends HttpServlet {
    private static ICategoryService iCategoryService = new CategoryService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("actionCategory");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                    showFormCreate(request,response);
                break;
            case "update":
                break;
            case "delete":
                break;
            case "search":
                break;
            default:
                showListCategory(request,response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("actionCategory");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createCategory(request,response);
                break;
            case "update":
                break;
            default:
                break;
        }
    }
    private void showListCategory(HttpServletRequest request , HttpServletResponse response){
        request.setAttribute("listCategory" , iCategoryService.findAll());
        try {
            request.getRequestDispatcher("/category/list.jsp").forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    private void showFormCreate(HttpServletRequest request , HttpServletResponse response){
        try {
            response.sendRedirect("category/create.jsp");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    private void createCategory(HttpServletRequest request , HttpServletResponse response){
        int id = Integer.parseInt(request.getParameter("id"));
        String post = request.getParameter("post");
        Category category = new Category(id , post);
        iCategoryService.create(category);
        try {
            response.sendRedirect("/CategoryServlet");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
