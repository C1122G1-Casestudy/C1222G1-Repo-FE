package model;

public class Post {
    private int idPost;
    private String postTitle;
    private String describe;
    private String dateSubmitted;
    private String img;
    private int id;
    private Category category;

    public Post() {
    }

    public Post(int idPost, String postTitle, String describe, String dateSubmitted, String img, int id, Category category) {
        this.idPost = idPost;
        this.postTitle = postTitle;
        this.describe = describe;
        this.dateSubmitted = dateSubmitted;
        this.img = img;
        this.id = id;
        this.category = category;
    }

    public Post(String postTitle, String describe, String dateSubmitted, String img, int idCategory, Category category) {
        this.postTitle = postTitle;
        this.describe = describe;
        this.dateSubmitted = dateSubmitted;
        this.img = img;
        this.id= idCategory;
        this.category = category;
    }

    public Post(int idPost, String postTitle, String describe, String dateSubmitted, String img, int id) {
        this.idPost = idPost;
        this.postTitle = postTitle;
        this.describe = describe;
        this.dateSubmitted = dateSubmitted;
        this.img = img;
        this.id = id;
    }

    public Post(int idPost, String postTitle, String describe, String dateSubmitted, String img) {
        this.idPost = idPost;
        this.postTitle = postTitle;
        this.describe = describe;
        this.dateSubmitted = dateSubmitted;
        this.img = img;
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
