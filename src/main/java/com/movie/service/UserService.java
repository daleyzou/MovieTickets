package com.movie.service;

import com.movie.entity.User;

/**
 * @author Svily_0
 * @create 2017-12-25 21:23
 **/
public interface UserService {

    public User login(User user);

    public int reg(User user);

    public int getUserByName(String username);

    int updateUser(User user);
}
