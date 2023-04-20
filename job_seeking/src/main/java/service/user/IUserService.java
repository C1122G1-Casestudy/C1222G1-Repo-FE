package service.user;

import model.User;

import java.util.List;

public interface IUserService {
    User login(String email, String passWord);
    void register(User user);
    User findUserById(int id);
    List<User> findAllUser();

    User findIdToUpdate(int idToUpdate);

    void updateUserOfAdmin(User user);

    List<User> searchByName(String nameToSearch);

    void deleteById(int idToDelete);

    User disPlayUser();
}
