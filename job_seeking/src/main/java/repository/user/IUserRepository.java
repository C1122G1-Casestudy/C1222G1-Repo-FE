package repository.user;

import model.User;

public interface IUserRepository {
    User login(String email, String passWord);
    void register(User user);
}
