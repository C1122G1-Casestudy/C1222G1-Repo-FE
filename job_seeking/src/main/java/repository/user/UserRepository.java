package repository.user;

import controller.DBConnection;
import dto.UserDTO;
import model.User;
import repository.user.IUserRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserRepository implements IUserRepository {

    @Override
    public User login(String email, String password) {
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = DBConnection.getConnection().prepareStatement("select * from `use` where email = ? and `password` = ?");
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                return new User(resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getString(4)
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void register(User user) {
        try {
            PreparedStatement preparedStatement = DBConnection.getConnection().prepareStatement("insert into `use`(use_name,email,`password`,phone_number) values (?,?,?,?)");
            preparedStatement.setString(1, user.getUserName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassWord());
            preparedStatement.setString(4, user.getPhoneNumber());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<User> getAll() {
        List<User> userList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = DBConnection.getConnection()
                    .prepareStatement("select id_use, use_name,email,phone_number from `use` where id_delete = 0");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt("id_use"));
                user.setUserName(resultSet.getString("use_name"));
                user.setEmail(resultSet.getString("email"));
                user.setPhoneNumber(resultSet.getString("phone_number"));
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }

    @Override
    public User getIdToUpdate(int idToUpdate) {
        User user = new User();
        try {
            PreparedStatement preparedStatement = DBConnection.getConnection()
                    .prepareStatement("select id_use, use_name, phone_number from `use` where id_use = ?");
            preparedStatement.setInt(1, idToUpdate);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                user.setId(resultSet.getInt("id_use"));
                user.setUserName(resultSet.getString("use_name"));
                user.setPhoneNumber(resultSet.getString("phone_number"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public void updateUserOfAdmin(User user) {
        try {
            PreparedStatement preparedStatement = DBConnection.getConnection()
                    .prepareStatement("update `use` set use_name = ?, phone_number = ? where id_use = ?");
            preparedStatement.setString(1, user.getUserName());
            preparedStatement.setString(2, user.getPhoneNumber());
            preparedStatement.setInt(3, user.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<User> getUserByName(String nameToSearch) {
        List<User> userList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = DBConnection.getConnection()
                    .prepareStatement("select id_use, use_name,email,phone_number from `use` where use_name like concat ('%',?,'%')");
            preparedStatement.setString(1, nameToSearch);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt("id_use"));
                user.setUserName(resultSet.getString("use_name"));
                user.setEmail(resultSet.getString("email"));
                user.setPhoneNumber(resultSet.getString("phone_number"));
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }

    @Override
    public void deleteById(int idToDelete) {
        try {
            PreparedStatement preparedStatement = DBConnection.getConnection()
                    .prepareStatement("update `use` set id_delete = 1 where id_use=?");
            preparedStatement.setInt(1,idToDelete);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public UserDTO getAllUserDTO(String email) {
        try {
            PreparedStatement preparedStatement = DBConnection.getConnection()
                    .prepareStatement("select `use`.use_name,`use`.phone_number, post.post_title, post.describe,post.date_submitted,post.img from `use` left join post on post.id_use = `use`.id_use where `use`.email like ?");
            preparedStatement.setString(1,email);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                 UserDTO userDTO = new UserDTO();
                 userDTO.setUserName(resultSet.getString("use_name"));
                 userDTO.setPhoneNumber(resultSet.getString("phone_number"));
                 userDTO.setPostTitle(resultSet.getString("post_title"));
                 userDTO.setDescribe(resultSet.getString("describe"));
                 userDTO.setDateSubmitted(resultSet.getString("date_submitted"));
                 userDTO.setImg(resultSet.getString("img"));
                 return userDTO;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }
}
