package service.user;

import model.User;

import java.util.List;

public interface IUserService {
    User login(String email, String passWord);
    void register(User user);
    User findUserById(int id);
    List<User> findAllUser();
}
