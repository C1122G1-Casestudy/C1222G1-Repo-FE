package service;

import model.Post;

import java.util.List;

public interface IPostService {
    List<Post> findAll();
    void create (Post post);

    void deletePost(int idPost);
    void update(Post post);

    Post findById(int idPost);

    List<Post> findByName(String post);
}
