package repository.post;

import dto.PostDTO;
import model.Post;

import java.util.List;

public interface IPostRepository {
    List<Post> findAll();
    List<PostDTO> getAll();

    void create(Post post);

    void deletePost(int idPost);

    Post findById(int idPost);

    List<PostDTO> findByName(String post);

    void update(int idPost, Post post);
}
