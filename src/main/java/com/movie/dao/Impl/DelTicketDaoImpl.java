package com.movie.dao.Impl;/*
 *@author: minz.
 *@create on: 2017/12/30
 */

import com.movie.dao.DelTicketDao;
import com.movie.entity.Ticket;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Component
@Transactional
public class DelTicketDaoImpl implements DelTicketDao {
    @Resource
    private HibernateTemplate hibernateTemplate;

    @Override
    public void del_ticket(Ticket ticket) {
        hibernateTemplate.delete(ticket);
    }
}
