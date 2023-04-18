package service.category;

import model.Category;

import java.util.List;

public interface ICategoryService {
    List<Category> findAll();
    void create(Category category);
    void delete(int id );
    void update(Category category);
    Category getCategoryById(int id );

    List<Category> findByName(String search);
}
