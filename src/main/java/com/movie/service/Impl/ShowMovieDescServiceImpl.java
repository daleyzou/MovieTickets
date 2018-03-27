package com.movie.service.Impl;/*
 *@author: minz.
 *@create on: 2018/1/1
 */

import com.movie.dao.ShowMovieDescDao;
import com.movie.entity.Movieinfo;
import com.movie.service.ShowMovieDescService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ShowMovieDescServiceImpl implements ShowMovieDescService {

    @Resource
    private ShowMovieDescDao showMovieDescDao;

    @Override
    public Movieinfo getinfo(int id) {
        return showMovieDescDao.getinfo(id);
    }
}
