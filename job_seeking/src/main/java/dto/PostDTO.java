package dto;

public class PostDTO {
    private int idPost;
    private String postTitle;
    private String describe;
    private String dateSubmitted;
    private String img;
    private String postCategory;

    public PostDTO() {
    }

    public PostDTO(int idPost, String postTitle, String describe, String dateSubmitted, String img, String postCategory) {
        this.idPost = idPost;
        this.postTitle = postTitle;
        this.describe = describe;
        this.dateSubmitted = dateSubmitted;
        this.img = img;
        this.postCategory = postCategory;
    }

    public int getIdPost() {
        return idPost;
    }

    public void setIdPost(int idPost) {
        this.idPost = idPost;
    }

    public String getPostTitle() {
        return postTitle;
    }

    public void setPostTitle(String postTitle) {
        this.postTitle = postTitle;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getDateSubmitted() {
        return dateSubmitted;
    }

    public void setDateSubmitted(String dateSubmitted) {
        this.dateSubmitted = dateSubmitted;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getPostCategory() {
        return postCategory;
    }

    public void setPostCategory(String postCategory) {
        this.postCategory = postCategory;
    }
}
