package com.movie.dao.Impl;/*
 *@author: minz.
 *@create on: 2017/12/29
 */

import com.movie.dao.ShowAllTicketsDao;
import com.movie.entity.Ticket;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;

@Component
@Transactional
public class ShowAllTicketsDaoImpl implements ShowAllTicketsDao {

    @Resource
    private SessionFactory sessionFactory;

    @Override
    public ArrayList<Ticket> get_alltickets() {
        ArrayList<Ticket> tickets = (ArrayList<Ticket>) sessionFactory.openSession().createQuery("from Ticket ").list();
        return tickets;
    }
}
