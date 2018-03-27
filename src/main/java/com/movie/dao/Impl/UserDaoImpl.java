package com.movie.dao.Impl;/**
 * @author Svily_0
 * @create 2017-12-25 21:23
 **/

import com.movie.dao.UserDao;
import com.movie.entity.User;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.transaction.annotation.Transactional;
import javax.annotation.Resource;
import java.util.Iterator;
import java.util.List;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
/**
 *
 * @author Svily_0
 * @create 2017-12-25 21:23
 **/

@Component
@Transactional
public class UserDaoImpl implements UserDao{

    @Resource
    private HibernateTemplate hibernateTemplate;

    @Override
    public User Login(User user) {

        List<User> list = (List<User>) hibernateTemplate.find("from User where username=? and password=?", user.getUsername(),user.getPassword());

        if (null != list && list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public int Reg(User user) {
       return (Integer) hibernateTemplate.save(user);
    }

    @Override
    public int getUserByName(String username) {
        List<User> list = (List<User>) hibernateTemplate.find("from User where username=?", username);
        if (list.size() <= 0){
            return 1;
        }

        return 0;
    }

    @Override
    public int updateUser(User user) {

        try {
            hibernateTemplate.update(user);
        }catch (Exception e){
            return 0;
        }
        return 1;
    }

}
