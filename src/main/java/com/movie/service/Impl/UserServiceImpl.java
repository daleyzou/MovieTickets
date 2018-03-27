package com.movie.service.Impl;/**
 * @author Svily_0
 * @create 2017-12-25 21:24
 **/

import com.movie.dao.UserDao;
import com.movie.entity.User;
import com.movie.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 *
 * @author Svily_0
 * @create 2017-12-25 21:24
 **/
@Service
public class UserServiceImpl implements UserService{

    @Resource
    private UserDao userDao;



    @Override
    public User login(User user) {
        return userDao.Login(user);
    }

    @Override
    public int reg(User user) {
       return userDao.Reg(user);
    }

    @Override
    public int getUserByName(String username) {
        return userDao.getUserByName(username);
    }

    @Override
    public int updateUser(User user) {
        return userDao.updateUser(user);
    }
}
