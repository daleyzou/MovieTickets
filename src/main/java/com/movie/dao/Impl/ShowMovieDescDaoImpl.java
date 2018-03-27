package com.movie.dao.Impl;/*
 *@author: minz.
 *@create on: 2018/1/1
 */

import com.movie.dao.ShowMovieDescDao;
import com.movie.entity.Movieinfo;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Component
@Transactional
public class ShowMovieDescDaoImpl implements ShowMovieDescDao {
    @Resource
    private SessionFactory sessionFactory;

    @Override
    public Movieinfo getinfo(int id) {
        Query query= sessionFactory.openSession().createQuery("from Movieinfo where id=:ID");
        query.setParameter("ID",id);
        Movieinfo info = (Movieinfo) query.list().get(0);
        return info;
    }
}
