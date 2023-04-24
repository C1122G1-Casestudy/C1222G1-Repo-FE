package model;

public class Category {
    private int idCategory;
    private String postCategory;

    public Category() {
    }

    public Category(int idCategory, String postCategory) {
        this.idCategory = idCategory;
        this.postCategory = postCategory;
    }

    public Category(String postCategory) {
        this.postCategory = postCategory;
    }

    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }

    public String getPostCategory() {
        return postCategory;
    }

    public void setPostCategory(String postCategory) {
        this.postCategory = postCategory;
    }
}
