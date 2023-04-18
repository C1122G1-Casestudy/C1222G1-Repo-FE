package repository;

import model.Post;

import java.util.List;

public interface IPostRepository {
    List<Post> findAll();

    void create(Post post);

    void deletePost(int idPost);

    Post findById(int idPost);

    List<Post> findByName(String post);
}
