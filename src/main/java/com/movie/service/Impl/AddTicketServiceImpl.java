package com.movie.service.Impl;/*
 *@author: minz.
 *@create on: 2017/12/30
 */

import com.movie.dao.AddTicketDao;
import com.movie.entity.Ticket;
import com.movie.service.AddTicketService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class AddTicketServiceImpl implements AddTicketService {
    @Resource
    private AddTicketDao addTicketDao;

    @Override
    public void add_ticket(Ticket ticket) {
        addTicketDao.add_ticket(ticket);
    }
}
