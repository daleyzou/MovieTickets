package com.movie.dao.Impl;/*
 *@author: minz.
 *@create on: 2018/1/4
 */

import com.movie.dao.DelHistoryDao;
import com.movie.dao.HistoryTicketDao;
import com.movie.entity.History;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;




@Component
@Transactional
public class DelHistoryDaoImpl implements DelHistoryDao {
    @Resource
    private HibernateTemplate hibernateTemplate;

    @Override
    public void delht(History history) {
        hibernateTemplate.delete(history);
    }
}
