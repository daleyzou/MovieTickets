package com.movie.service.Impl;/*
 *@author: minz.
 *@create on: 2018/1/3
 */

import com.movie.dao.HistoryTicketDao;
import com.movie.entity.History;
import com.movie.service.HistoryTicketService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
@Service
public class HistoryTicketServiceImpl implements HistoryTicketService{

    @Resource
    private HistoryTicketDao historyTicketDao;

    @Override
    public ArrayList<History> getht(String uid) {
        return historyTicketDao.getht(uid);
    }
}
