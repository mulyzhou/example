package com.muly.service;

import com.muly.entity.User;

import java.util.List;

public interface IUserService {
    public User getUserById(int userId);

    List<User> list();
}
