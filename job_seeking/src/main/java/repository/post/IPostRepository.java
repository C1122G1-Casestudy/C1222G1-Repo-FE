package repository.post;

import dto.PostDTO;
import model.Post;

import java.util.List;

public interface IPostRepository {
    List<Post> findAll();
    List<PostDTO> getAll();

    void create(Post post);



   

    List<PostDTO> findByName(String post);




    PostDTO findToUpdatePostByIdPostAndEmail(int idUpdate, String emailUpdate);

    void updatePostByIdAndEmail(Post postToUpdateO);

    void detePostById(int idDelete);
}
