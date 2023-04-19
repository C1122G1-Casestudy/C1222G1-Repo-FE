package service.user;

import model.User;
import repository.user.IUserRepository;
import repository.user.UserRepository;

import java.util.List;

public class UserService implements IUserService {
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
        return iUserRepository.getAll();
    }

    @Override
    public User findIdToUpdate(int idToUpdate) {
        return iUserRepository.getIdToUpdate(idToUpdate);
    }

    @Override
    public void updateUserOfAdmin(User user) {
        iUserRepository.updateUserOfAdmin(user);
    }

    @Override
    public List<User> searchByName(String nameToSearch) {
        if (nameToSearch == null){
            nameToSearch="";
        }
        return iUserRepository.getUserByName(nameToSearch);
    }

    @Override
    public void deleteById(int idToDelete) {
        iUserRepository.deleteById(idToDelete);
    }
}
