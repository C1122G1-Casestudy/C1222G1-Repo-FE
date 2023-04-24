package repository.post;

import controller.DBConnection;
import dto.PostDTO;
import model.Post;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PostRepository implements IPostRepository {
    private static final String SELECT_ALL_POST = "select * from post";
//    private static final String SELECT_ALL_POSTDTO = "select post.id, post.post_title, post.describe, " +
//            "post.date_submitted, post.img, category.post_category from post join category on post.id_category = category.id_category";
    private static final String DELETE_FORM_ID = "delete from post where id = ?;";
    private static final String UPDATE_POST = "update post set post_title = ?,`describe`= ?, date_submitted =?, img =?, id_category =?  where id = ?;";
    private static final String SELECT_POST_BY_ID = "select * from post where id = ?";


    /**
     * Function: show List<Post> form
     * Create: HuyNH
     * Date create: 17/04/2023
     */
    private static final String SELECT_ALL_POSTDTO = "select post.id, post.post_title, post.describe, " +
            "post.date_submitted, post.img, category.post_category, use.use_name from post join category on post.id_category = category.id_category join `use` on `use`.id_use = post.id_use  ";
    @Override
    public List<PostDTO> getAll() {
        List<PostDTO> postList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = DBConnection.getConnection().prepareStatement(SELECT_ALL_POSTDTO);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String postTitle = resultSet.getString("post_title");
                String describe = resultSet.getString("describe");
                String dateSubmitted = resultSet.getString("date_submitted");
                String img = resultSet.getString("img");
                String post_category = resultSet.getString("post_category");
                String useName = resultSet.getString("use_name");
                postList.add(new PostDTO(id,postTitle,describe,dateSubmitted,img,post_category,useName));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return postList;
    }

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
                int idCategory = resultSet.getInt("idCategory");
                postList.add(new Post(id,postTitle,describe,dateSubmitted,img,idCategory));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return postList;
    }
    private static final String CREATE = "insert into post(post_title, `describe`,date_submitted, img, id_category)values( ? ,?, ?, ?, ?);";

    @Override
    public void create(Post post) {
        try {
            PreparedStatement preparedStatement = DBConnection.getConnection().prepareStatement(CREATE);
            preparedStatement.setString(1,post.getPostTitle());
            preparedStatement.setString(2,post.getDescribe());
            preparedStatement.setString(3,post.getDateSubmitted());
            preparedStatement.setString(4,post.getImg());
            preparedStatement.setInt(5,post.getIdCategory());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
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
            preparedStatement.setInt(5,post.getIdCategory());
            preparedStatement.setInt(6,idPost);
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
    private static final String SELECT_POST_BY_NAME = "select * from post where post_title like concat('%',?,'%');";
    private static final String SELECT_ALL_POST_DTO_BY_NAME = "select post.id, post.post_title, post.describe, post.date_submitted, post.img, category.post_category, use.use_name from post join category on post.id_category = category.id_category join `use` on `use`.id_use = post.id_use  ";
    @Override
    public List<PostDTO> findByName(String post) {

//        List<PostDTO> postList = getAll();
//        System.out.println(postList.size());
//        List<PostDTO> list = new ArrayList<>();
//        for (PostDTO post1 : postList) {
//            if (post1.getPostTitle().equals(post)) {
//                list.add(post1);
//            }
//        }
//        return list;

        List<PostDTO> postList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = DBConnection.getConnection().
                    prepareStatement("select post.id, post.post_title, post.describe, post.date_submitted, post.img, category.post_category, `use`.use_name from post join category on post.id_category = category.id_category join `use` on `use`.id_use = post.id_use where post_title like concat('%',?,'%')" );
           preparedStatement.setString(1,post);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String postTitle = resultSet.getString("post_title");
                String describe = resultSet.getString("describe");
                String dateSubmitted = resultSet.getString("date_submitted");
                String img = resultSet.getString("img");
                String post_category = resultSet.getString("post_category");
                String useName = resultSet.getString("use_name");
                postList.add(new PostDTO(id,postTitle,describe,dateSubmitted,img,post_category,useName));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return postList;
    }
}
