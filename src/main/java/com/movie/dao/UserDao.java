package com.movie.dao;

import com.movie.entity.User;

/**
 * @author Svily_0
 * @create 2017-12-25 21:23
 **/
public interface UserDao {
    public User Login(User user);

    public int Reg(User user);


    public int getUserByName(String username);

    int updateUser(User user);
}
