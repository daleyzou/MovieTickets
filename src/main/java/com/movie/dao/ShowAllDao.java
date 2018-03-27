package com.movie.dao;/*
 *@author: minz.
 *@create on: 2017/12/28
 */

import com.movie.entity.Movieinfo;

import java.util.ArrayList;

public interface ShowAllDao {
    public ArrayList<Movieinfo> get_allmovies(int start);
}
