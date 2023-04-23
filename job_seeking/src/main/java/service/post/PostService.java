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
    public List<PostDTO> findByName(String post) {
        return iPostRepository.findByName(post);
    }

    @Override
    public PostDTO findToUpdatePostByIdPostAndEmail(int idUpdate, String emailUpdate) {
        return iPostRepository.findToUpdatePostByIdPostAndEmail(idUpdate,emailUpdate);
    }

    @Override
    public void updateByIdAndEmail(Post postToUpdate) {
        iPostRepository.updatePostByIdAndEmail(postToUpdate);
    }

    @Override
    public void deletePostById(int idDelete) {
        iPostRepository.detePostById(idDelete);
    }


}
