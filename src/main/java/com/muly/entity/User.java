package com.muly.entity;

import java.util.List;

public class User {
    private Integer id;

    private String userName;

    private String password;

    private Integer age;

    private List<Info> infolist;

    public List<Info> getInfolist() {
        return infolist;
    }

    public void setInfolist(List<Info> infolist) {
        this.infolist = infolist;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", age=" + age +
                ", infolist=" + infolist +
                '}';
    }
}