package com.movie.dao.Impl;/*
 *@author: minz.
 *@create on: 2017/12/28
 */

import com.movie.dao.ShowAllDao;
import com.movie.entity.Movieinfo;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import javax.annotation.Resource;
import java.util.ArrayList;

@Component
@Transactional
public class ShowAllDaoImpl implements ShowAllDao {

    @Resource
    private SessionFactory sessionFactory;

    //    @Resource
//    private HibernateTemplate hibernateTemplate;
    @Override
    public ArrayList<Movieinfo> get_allmovies(int start) {
        /*通过sessionfactory查找*/
        //Query query = sessionFactory.openSession().createQuery("from Movieinfo limit ?,?");
        Query query = sessionFactory.openSession().createQuery("from Movieinfo");
        //设置第一个要查询的位置（计算公式：
        query.setFirstResult(start);
        //设置每页显示的最大记录数
        query.setMaxResults(10);
        ArrayList<Movieinfo> list = (ArrayList<Movieinfo>) query.list();
        //System.out.println(list.get(0).getName());
        return list;
    }
}
