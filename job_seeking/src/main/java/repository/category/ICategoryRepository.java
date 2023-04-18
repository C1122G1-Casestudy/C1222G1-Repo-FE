package repository.category;

import model.Category;

import java.util.List;

public interface ICategoryRepository {
    List<Category> listCategory();
    void create(Category category);
    void delete(int id);
}
