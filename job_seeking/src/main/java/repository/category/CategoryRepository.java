package repository.category;

import controller.DBConnection;
import model.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

public class CategoryRepository implements ICategoryRepository {
    private static final String LIST_USER = "select * from category";
    private static final String ADD_USER ="insert into category(id_category , post_category) value(?,?)";
//    private static final String DELETE_USER =""
    @Override
    public List<Category> listCategory() {
        List<Category> list = new ArrayList<>();
        try(Connection connection = DBConnection.getConnection() ;
            PreparedStatement preparedStatement = connection.prepareStatement(LIST_USER)){
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id_category");
                String postCategory = resultSet.getString("post_category");
                Category category = new Category(id , postCategory);
                list.add(category);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    @Override
    public void create(Category category) {
        try(Connection connection = DBConnection.getConnection() ;
        PreparedStatement preparedStatement = connection.prepareStatement(ADD_USER)){
            preparedStatement.setInt(1,category.getIdCategory());
            preparedStatement.setString(2,category.getPostCategory());
            preparedStatement.executeQuery();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void delete(int id) {

    }
}
