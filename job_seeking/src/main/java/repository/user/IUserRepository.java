package repository.user;

import model.User;

import java.util.List;

public interface IUserRepository {
    User login(String email, String passWord);
    void register(User user);
    List<User> getAll();

    User getIdToUpdate(int idToUpdate);

    void updateUserOfAdmin(User user);

    List<User> getUserByName(String nameToSearch);

    void deleteById(int idToDelete);
}
