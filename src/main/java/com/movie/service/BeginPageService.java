package com.movie.service;

import com.movie.entity.Movieinfo;

import java.util.List;

public interface BeginPageService {


    List<Movieinfo> getListByTypeCode(String type_code);
}
