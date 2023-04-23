package dto;

public class PostDTO {
    private int idPost;
    private String postTitle;
    private String describe;
    private String dateSubmitted;
    private String img;
    private String postCategory;
    private String userName;
    private String emailUserName;
    private int idCategory;

    public PostDTO() {
    }

    public PostDTO(int idPost, String postTitle, String describe, String dateSubmitted, String img, String postCategory, String userName, String emailUserName) {
        this.idPost = idPost;
        this.postTitle = postTitle;
        this.describe = describe;
        this.dateSubmitted = dateSubmitted;
        this.img = img;
        this.postCategory = postCategory;
        this.userName = userName;
        this.emailUserName = emailUserName;
    }

    public PostDTO(int idPost, String postTitle, String describe, String dateSubmitted, String img, String postCategory, String userName) {
        this.idPost = idPost;
        this.postTitle = postTitle;
        this.describe = describe;
        this.dateSubmitted = dateSubmitted;
        this.img = img;
        this.postCategory = postCategory;
        this.userName = userName;
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

    public String getUserName() {
        return userName;
    }

    public void setNameUser(String userName) {
        this.userName = userName;
    }

    public String getEmailUserName() {
        return emailUserName;
    }

    public void setEmailUserName(String emailUserName) {
        this.emailUserName = emailUserName;
    }
}
