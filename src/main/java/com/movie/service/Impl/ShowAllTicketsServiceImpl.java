package com.movie.service.Impl;/*
 *@author: minz.
 *@create on: 2017/12/29
 */

import com.movie.dao.ShowAllTicketsDao;
import com.movie.entity.Ticket;
import com.movie.service.ShowAllTicketsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;

@Service
public class ShowAllTicketsServiceImpl implements ShowAllTicketsService {
    @Resource
    private ShowAllTicketsDao showAllTicketsDao;

    @Override
    public ArrayList<Ticket> getalltickets() {
        return showAllTicketsDao.get_alltickets();
    }
}
