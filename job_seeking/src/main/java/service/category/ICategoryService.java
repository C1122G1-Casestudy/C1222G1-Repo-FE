package service.category;

import model.Category;

import java.util.List;

public interface ICategoryService {
    List<Category> findAll();
    void create(Category category);
}
