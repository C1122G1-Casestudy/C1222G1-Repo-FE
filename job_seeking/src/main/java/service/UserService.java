package service;

import model.User;
import repository.IUserRepository;
import repository.UserRepository;

import java.util.List;

public class UserService implements IUserService{
    private IUserRepository iUserRepository = new UserRepository();
    @Override
    public User login(String email, String passWord) {
        return iUserRepository.login(email,passWord);
    }

    @Override
    public void register(User user) {
        iUserRepository.register(user);
    }

    @Override
    public User findUserById(int id) {
        return null;
    }

    @Override
    public List<User> findAllUser() {
        return null;
    }
}
