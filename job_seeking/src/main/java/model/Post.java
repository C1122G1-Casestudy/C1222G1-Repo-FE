package model;

public class Post {
    private int idPost;
    private String postTitle;
    private String describe;
    private String dateSubmitted;
    private String img;
    private int idCategory;
    private int idUser;

    public Post(int idPost, String postTitle, String describe, String dateSubmitted, String img, int idCategory, int idUser) {
        this.idPost = idPost;
        this.postTitle = postTitle;
        this.describe = describe;
        this.dateSubmitted = dateSubmitted;
        this.img = img;
        this.idCategory = idCategory;
        this.idUser = idUser;
    }

    public Post(int idPost, String postTitle, String describe, String dateSubmitted, String img, int idCategory) {
        this.idPost = idPost;
        this.postTitle = postTitle;
        this.describe = describe;
        this.dateSubmitted = dateSubmitted;
        this.img = img;
        this.idCategory = idCategory;
    }

    public Post() {
    }

    public Post(int idPost, String postTitle, String describe, String dateSubmitted, String img) {

        this.idPost = idPost;
        this.postTitle = postTitle;
        this.describe = describe;
        this.dateSubmitted = dateSubmitted;
        this.img = img;
    }

    public Post(String postTitle, String describe, String dateSubmitted, String img, int idCategory) {
        this.postTitle = postTitle;
        this.describe = describe;
        this.dateSubmitted = dateSubmitted;
        this.img = img;
        this.idCategory = idCategory;
    }

    public Post(String postTitle, String describe, String dateSubmitted, String img) {
        this.postTitle = postTitle;
        this.describe = describe;
        this.dateSubmitted = dateSubmitted;
        this.img = img;
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

    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }
}
