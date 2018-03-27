package com.movie.service;/*
 *@author: minz.
 *@create on: 2018/1/3
 */

import com.movie.entity.History;

import java.util.ArrayList;

public interface HistoryTicketService {
    public ArrayList<History> getht(String uid);
}
