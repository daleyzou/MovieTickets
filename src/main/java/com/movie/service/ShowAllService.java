package com.movie.service;/*
 *@author: minz.
 *@create on: 2017/12/28
 */

import com.movie.entity.Movieinfo;

import java.util.ArrayList;

public interface ShowAllService {
    public ArrayList<Movieinfo> getallMovies(int start);
}
