package repository.user;

import model.User;

import java.util.List;

public interface IUserRepository {
    User login(String email, String passWord);
    void register(User user);
    List<User> findAllUser();
    List<User> getAll();
}
