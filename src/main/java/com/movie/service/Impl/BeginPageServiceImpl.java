package com.movie.service.Impl;

import com.movie.dao.BeginPageDao;
import com.movie.entity.Movieinfo;
import com.movie.service.BeginPageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BeginPageServiceImpl implements BeginPageService {

    @Resource
    private BeginPageDao beginPageDao;

    @Override
    public List<Movieinfo> getListByTypeCode(String type_code) {

        return beginPageDao.getListByTypeCode(type_code);
    }

    public void setBeginPageDao(BeginPageDao beginPageDao) {
        this.beginPageDao = beginPageDao;
    }
}
