package repository.post;

import controller.DBConnection;
import model.Category;
import model.Post;
import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PostRepository implements IPostRepository {
    private static final String CREATE = "insert into post(id, post_title, describe,date_submitted, img)value(?, ?, ? ,?, ?);";
    private static final String DELETE_FORM_ID = "delete from post where id = ?;";
    /**
     * Function: show List<Post> form
     * Create: HuyNH
     * Date create: 17/04/2023
     */
    @Override
    public List<Post> findAll() {
        List<Post> postList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = DBConnection.getConnection().prepareStatement("select * from post");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String postTitle = resultSet.getString("post_title");
                String describe = resultSet.getString("describe");
                String dateSubmitted = resultSet.getString("date_submitted");
                String img = resultSet.getString("img");
//                String category = resultSet.getString("category");
//                String userName = resultSet.getString("user_name");
                postList.add(new Post(id,postTitle,describe,dateSubmitted,img));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return postList;
    }

    @Override
    public void create(Post post) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement(CREATE);
                statement.setInt(1, 1);
                statement.setString(2, post.getPostTitle());
                statement.setString(3, post.getDescribe());
                statement.setString(4, post.getDateSubmitted());
                statement.setString(5, post.getImg());
                statement.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                DBConnection.close();
            }
        }
    }

    @Override
    public void deletePost(int idPost) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement(DELETE_FORM_ID);
                statement.setInt(1, idPost);
                statement.executeUpdate();
            } catch (RuntimeException | SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    statement.close();
                    connection.close();
                } catch (RuntimeException | SQLException e) {
                    e.printStackTrace();
                }
                DBConnection.close();
            }
        }
    }

    @Override
    public Post findById(int idPost) {
        List<Post> list = findAll();
        for (Post post : list) {
            if (idPost == post.getIdPost()) {
                return post;
            }
        }
        return null;
    }

    @Override
    public List<Post> findByName(String post) {
        List<Post> postList = findAll();
        System.out.println(postList.size());
        List<Post> list = new ArrayList<>();
        for (Post post1 : postList) {
            if (post1.getPostTitle().equals(post)) {
                list.add(post1);
            }
        }
        return list;
    }
}
