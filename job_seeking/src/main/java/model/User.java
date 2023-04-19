package model;

public class User {
    private int id;
    private String userName;
    private String email;
    private String phoneNumber;
    private String passWord;

    public User() {
    }

    public User(int id, String userName, String email, String phoneNumber, String passWord) {
        this.id = id;
        this.userName = userName;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.passWord = passWord;
    }

    public User(String userName, String email, String phoneNumber, String passWord) {
        this.userName = userName;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.passWord = passWord;
    }

    public User(int idToUpdate, String nameToUpdate, String phoneNumberToUpdate) {
        this.id = idToUpdate;
        this.userName = nameToUpdate;
        this.phoneNumber = phoneNumberToUpdate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPassWord(String passWord){
        this.passWord = passWord;
    }

    public String getPassWord(){
        return passWord;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

}
