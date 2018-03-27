package com.movie.service.Impl;/*
 *@author: minz.
 *@create on: 2017/12/30
 */

import com.movie.dao.DelTicketDao;
import com.movie.entity.Ticket;
import com.movie.service.DelTicketService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class DelTicketServiceImpl implements DelTicketService {
    @Resource
    private DelTicketDao delTicketDao;
    @Override
    public void del_ticket(Ticket ticket) {
        delTicketDao.del_ticket(ticket);
    }
}
