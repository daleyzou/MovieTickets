package com.movie.dao;

import com.movie.entity.Movieinfo;

import java.util.List;

public interface BeginPageDao {
    List<Movieinfo> getListByTypeCode(String type_code);
}
