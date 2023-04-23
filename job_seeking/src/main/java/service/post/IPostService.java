package service.post;

import dto.PostDTO;
import model.Post;

import java.util.List;
import java.util.Map;

public interface IPostService {
    List<PostDTO> getAll();
    List<Post> findAll();
    void create (Post post);

    List<PostDTO> findByName(String post);


    PostDTO findToUpdatePostByIdPostAndEmail(int idUpdate, String emailUpdate);

    void updateByIdAndEmail(Post postToUpdate);

    void deletePostById(int idDelete);
}
