package com.movie.dao;/*
 *@author: minz.
 *@create on: 2018/1/3
 */

import com.movie.entity.History;

import java.util.ArrayList;

public interface HistoryTicketDao {
    public ArrayList<History> getht(String uid);
}
