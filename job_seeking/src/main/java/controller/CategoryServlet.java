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
                showFormCreate(request, response);
                break;
            case "update":
                showFormUpdate(request,response);
                break;
            case "delete":
                deleteCategory(request, response);
                break;
            case "search":
                searchCategory(request,response);
                break;
            default:
                showListCategory(request, response);
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
                createCategory(request, response);
                break;
            case "update":
                updateCategory(request,response);
                break;
            default:
                showListCategory(request, response);
                break;
        }
    }

    private void showFormUpdate(HttpServletRequest request , HttpServletResponse response ) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("category" , iCategoryService.getCategoryById(id));
        request.getRequestDispatcher("category/update.jsp").forward(request , response);

    }

    private void showListCategory(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("listCategory", iCategoryService.findAll());
        try {
            request.getRequestDispatcher("/category/list.jsp").forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showFormCreate(HttpServletRequest request, HttpServletResponse response) {
        try {
            response.sendRedirect("category/create.jsp");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void createCategory(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String post = request.getParameter("post");
        Category category = new Category(id, post);
        iCategoryService.create(category);
        try {
            response.sendRedirect("/categoryServlet");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void deleteCategory(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("idDelete"));
        iCategoryService.delete(id);
        try {
            response.sendRedirect("/categoryServlet");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    private void updateCategory(HttpServletRequest request , HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String postCategory = request.getParameter("post");
        Category category = new Category(id,postCategory);
        iCategoryService.update(category);
        response.sendRedirect("/categoryServlet");
    }
    public void searchCategory(HttpServletRequest request , HttpServletResponse response) throws IOException, ServletException {
        String search = request.getParameter("search");
        request.setAttribute("listCategory" , iCategoryService.findByName(search));
        request.getRequestDispatcher("/category/list.jsp").forward(request,response);
    }

}
