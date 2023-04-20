package service.post;

import dto.PostDTO;
import model.Post;

import java.util.List;
import java.util.Map;

public interface IPostService {
    List<PostDTO> getAll();
    List<Post> findAll();
    void create (Post post);

    void deletePost(int idPost);
    void update(int idPost, Post post);

    Post findById(int idPost);

    List<PostDTO> findByName(String post);
}
