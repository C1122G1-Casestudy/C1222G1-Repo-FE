package service;

import model.Post;
import repository.IPostRepository;
import repository.PostRepository;

import java.util.List;

public class PostService implements IPostService {
    IPostRepository iPostRepository = new PostRepository();

    @Override
    public List<Post> findAll() {
        return iPostRepository.findAll();
    }

    @Override
    public void create(Post post) {
        iPostRepository.create(post);
    }

    @Override
    public void deletePost(int idPost) {
        iPostRepository.deletePost(idPost);
    }

    @Override
    public void update(Post post) {

    }

    @Override
    public Post findById(int idPost) {
        return iPostRepository.findById(idPost);
    }

    @Override
    public List<Post> findByName(String post) {
        return iPostRepository.findByName(post);
    }
}
