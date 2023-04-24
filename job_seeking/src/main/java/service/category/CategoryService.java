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

    @Override
    public void delete(int id) {
        iCategoryRepository.delete(id);
    }

    @Override
    public void update(Category category) {
        iCategoryRepository.update(category);
    }

    @Override
    public Category getCategoryById(int id) {
        return iCategoryRepository.getCategoryById(id);
    }

    @Override
    public List<Category> findByName(String search) {
        if (search==null){
            search ="";
        }
        return iCategoryRepository.findByName(search);
    }
}
