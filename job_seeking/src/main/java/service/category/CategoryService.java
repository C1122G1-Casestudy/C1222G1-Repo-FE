package service.category;

import model.Category;
import repository.category.CategoryRepository;
import repository.category.ICategoryRepository;

import java.util.List;

public class CategoryService implements ICategoryService {
    private static ICategoryRepository iCategoryRepository = new CategoryRepository();
    @Override
    public List<Category> findAll() {
        return iCategoryRepository.listCategory();
    }

    @Override
    public void create(Category category) {
        iCategoryRepository.create(category);
    }
}
