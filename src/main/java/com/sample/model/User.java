package com.sample.model;

import java.util.List;

public class User {
    private Integer id;
    private String username;
    private String password;
    List<Post> posts;

    public User(Integer id, String username, String password, List<Post> posts) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.posts = posts;
    }

    public User() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<Post> getPosts() {
        return posts;
    }

    public void setPosts(List<Post> posts) {
        this.posts = posts;
    }
}
