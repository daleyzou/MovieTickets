package com.movie.dao.Impl;/*
 *@author: minz.
 *@create on: 2018/1/4
 */

import com.movie.dao.HistoryTicketDao;
import com.movie.entity.History;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;

@Component
@Transactional
public class HistoryTicketDaoImpl implements HistoryTicketDao{
    @Resource
    private SessionFactory sessionFactory;

    @Override
    public ArrayList<History> getht(String uid) {
        Query query = sessionFactory.openSession().createQuery("from History where userId=:d");
        query.setParameter("d",uid);
        ArrayList<History> list = (ArrayList<History>)query.list();
        return list;
    }
}
