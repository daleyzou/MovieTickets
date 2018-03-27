package com.movie.dao;/*
 *@author: minz.
 *@create on: 2017/12/29
 */

import com.movie.entity.Ticket;

import java.util.ArrayList;

public interface ShowAllTicketsDao {
    public ArrayList<Ticket> get_alltickets();
}
