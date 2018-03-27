package com.movie.service.Impl;/*
 *@author: minz.
 *@create on: 2018/1/4
 */

import com.movie.dao.DelHistoryDao;
import com.movie.entity.History;
import com.movie.service.DelHistoryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
@Service
public class DelHistoryServiceImpl implements DelHistoryService{
    @Resource
    private DelHistoryDao delHistoryDao;

    @Override
    public void delht(History history) {
        delHistoryDao.delht(history);
    }
}
