package com.movie.service.Impl;/*
 *@author: minz.
 *@create on: 2017/12/28
 */

import com.movie.dao.ShowAllDao;
import com.movie.entity.Movieinfo;
import com.movie.service.ShowAllService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;

@Service
public class ShowAllServiceImpl implements ShowAllService {

    @Resource
    private ShowAllDao showallDao;

    @Override
    public ArrayList<Movieinfo> getallMovies(int start) {
        return showallDao.get_allmovies(start);
    }
}
