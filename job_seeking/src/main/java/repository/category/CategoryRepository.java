package repository.category;

import controller.DBConnection;
import model.Category;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryRepository implements ICategoryRepository {
    private static final String LIST_CATEGORY = "select * from category where is_delete = 0";
    private static final String ADD_CATEGORY = "insert into category(id_category , post_category) value(?,?)";

    private static final String DELETE_CATEGORY = "update category set is_delete = 1 where id_category = ?";
    private static final String UPDATE_CATEGORY ="update category set post_category = ? where id_category = ?";
    private static final String GET_CATEGORY_BY_ID ="{CALL get_category_by_id(?)}";
    private static final String FIND_BY_NAME = "select id_category , post_category from category where post_category like concat('%',?,'%') ";

    @Override
    public List<Category> listCategory() {
        List<Category> list = new ArrayList<>();
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(LIST_CATEGORY)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id_category");
                String postCategory = resultSet.getString("post_category");
                Category category = new Category(id, postCategory);
                list.add(category);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    @Override
    public void create(Category category) {
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(ADD_CATEGORY)) {
            preparedStatement.setInt(1, category.getIdCategory());
            preparedStatement.setString(2, category.getPostCategory());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void delete(int id) {
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_CATEGORY)) {
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void update(Category category) {
        try(Connection connection = DBConnection.getConnection() ;
        PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CATEGORY)){
            preparedStatement.setInt(2 , category.getIdCategory());
            preparedStatement.setString(1 , category.getPostCategory());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public Category getCategoryById(int id) {
        Category category = null ;
        try(Connection connection = DBConnection.getConnection();
        CallableStatement callableStatement = connection.prepareCall(GET_CATEGORY_BY_ID)) {
            callableStatement.setInt(1,id);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()){
                String postCategory = resultSet.getString("post_Category");
                category = new Category(id , postCategory);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return category;
    }

    @Override
    public List<Category> findByName(String search) {
        List<Category> list = new ArrayList<>();
        try(Connection connection = DBConnection.getConnection() ;
         PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_NAME)){
            preparedStatement.setString(1 , search);
            ResultSet resultSet = preparedStatement.executeQuery();
            Category category ;
            while (resultSet.next()){
                category = new Category();
                category.setIdCategory(resultSet.getInt("id_category"));
                category.setPostCategory(resultSet.getString("post_category"));
                list.add(category);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

}