package repository.user;

import controller.DBConnection;
import model.User;
import repository.user.IUserRepository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserRepository implements IUserRepository {

    @Override
    public User login(String email, String passWord) {
        PreparedStatement preparedStatement = null;
        try{
            preparedStatement = DBConnection.getConnection().prepareStatement("select * from user where email = ? and password = ?");
            preparedStatement.setString(1, email);
            preparedStatement.setString(2,passWord);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                return new User(resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getString(4)
                );
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void register(User user) {
        try {
            PreparedStatement preparedStatement = DBConnection.getConnection().prepareStatement("insert into user(name,email,password,phone_number) values (?,?,?,?)");
            preparedStatement.setString(1,user.getUserName());
            preparedStatement.setString(2,user.getEmail());
            preparedStatement.setString(3,user.getPassWord());
            preparedStatement.setString(4,user.getPhoneNumber());
            preparedStatement.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}
