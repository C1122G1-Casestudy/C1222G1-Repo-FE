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
    private static final String SELECT_ALL_POST = "select * from post";
    private static final String CREATE = "insert into post(post_title, `describe`,date_submitted, img)values(?, ? ,?, ?);";
    private static final String DELETE_FORM_ID = "delete from post where id = ?;";
    private static final String UPDATE_POST = "update post set post_title = ?,`describe`= ?, date_submitted =?, img =? where id = ?;";
    private static final String SELECT_POST_BY_ID = "select * from post where id = ?";
    private static final String SELECT_POST_BY_NAME = "select * from post where post_title like concat('%',?,'%');";

    /**
     * Function: show List<Post> form
     * Create: HuyNH
     * Date create: 17/04/2023
     */
    @Override
    public List<Post> findAll() {
        List<Post> postList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = DBConnection.getConnection().prepareStatement(SELECT_ALL_POST);
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
        try {
            PreparedStatement preparedStatement = DBConnection.getConnection().prepareStatement(CREATE);
            preparedStatement.setString(1,post.getPostTitle());
            preparedStatement.setString(2,post.getDescribe());
            preparedStatement.setString(3,post.getDateSubmitted());
            preparedStatement.setString(4,post.getImg());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deletePost(int idPost) {
        try {
            PreparedStatement preparedStatement = DBConnection.getConnection().prepareStatement(DELETE_FORM_ID);
            preparedStatement.setInt(1,idPost);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void update(int idPost, Post post) {
        try {
            PreparedStatement preparedStatement = DBConnection.getConnection().prepareStatement(UPDATE_POST);
            preparedStatement.setString(1,post.getPostTitle());
            preparedStatement.setString(2,post.getDescribe());
            preparedStatement.setString(3,post.getDateSubmitted());
            preparedStatement.setString(4,post.getImg());
            preparedStatement.setInt(5,post.getIdPost());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
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
//        try {
//            PreparedStatement preparedStatement = DBConnection.getConnection().
//                    prepareStatement(SELECT_POST_BY_ID);
//            preparedStatement.setInt(1, idPost);
//            ResultSet resultSet = preparedStatement.executeQuery();
//            Post post = null;
//            if (resultSet.next()) {
//                post = new Post();
//                post.setIdPost(resultSet.getInt("id"));
//                post.setPostTitle(resultSet.getString("postTitle"));
//                post.setDescribe(resultSet.getString("describe"));
//                post.setDateSubmitted(resultSet.getString("dateSubmitted"));
//                post.setImg(resultSet.getString("img"));
//            }
//            return post;
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return null;
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
//        List<Post> postList = new ArrayList<>();
//        try {
//            PreparedStatement preparedStatement = DBConnection.getConnection().
//                    prepareStatement(SELECT_POST_BY_NAME);
//            preparedStatement.setString(1,post);
//            ResultSet resultSet = preparedStatement.executeQuery();
//            Post post1;
//            while (resultSet.next()) {
//                post1 = new Post();
//                post1.setIdPost(resultSet.getInt("id"));
//                post1.setPostTitle(resultSet.getString("postTitle"));
//                post1.setDescribe(resultSet.getString("describe"));
//                post1.setDateSubmitted(resultSet.getString("dateSubmitted"));
//                post1.setImg(resultSet.getString("img"));
//                postList.add(post1);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return postList;
    }
}
