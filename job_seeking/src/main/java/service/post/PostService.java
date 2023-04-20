package service.post;

import dto.PostDTO;
import model.Post;
import repository.post.IPostRepository;
import repository.post.PostRepository;
import java.util.List;


public class PostService implements IPostService {
    private IPostRepository iPostRepository = new PostRepository();

    @Override
    public List<PostDTO> getAll() {
        return iPostRepository.getAll();
    }

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
    public void update(int idPost,Post post) {
        iPostRepository.update(idPost, post);
    }

    @Override
    public Post findById(int idPost) {
        return iPostRepository.findById(idPost);
    }

    @Override
    public List<PostDTO> findByName(String post) {
        return iPostRepository.findByName(post);
    }
}
