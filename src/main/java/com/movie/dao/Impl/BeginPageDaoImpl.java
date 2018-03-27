package com.movie.dao.Impl;

import com.movie.dao.BeginPageDao;
import com.movie.entity.Movieinfo;
import org.hibernate.query.Query;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Component
@Transactional
public class BeginPageDaoImpl  implements BeginPageDao {

    @Resource
    private HibernateTemplate hibernateTemplate;



    @Override
    public List<Movieinfo> getListByTypeCode(String type_code) {
        String sql = "";
        Query query = null;
        if(type_code.equals("owl-demo")){
            sql = "from Movieinfo order by id desc ";
            query = hibernateTemplate.getSessionFactory().getCurrentSession().createQuery(sql);
            query.setFirstResult(1);
            query.setMaxResults(10);
        }else if (type_code.equals("popular")){
            sql = "from Movieinfo order by id asc";
            query = hibernateTemplate.getSessionFactory().getCurrentSession().createQuery(sql);
            query.setFirstResult(100);
            query.setMaxResults(110);
        }else if (type_code.equals("score")){
            sql = "from Movieinfo order by score desc ";
            query = hibernateTemplate.getSessionFactory().getCurrentSession().createQuery(sql);
            query.setFirstResult(1);
            query.setMaxResults(10);
        }else if (type_code.equals("recommend")){
            sql = "from Movieinfo order by id asc";
            query = hibernateTemplate.getSessionFactory().getCurrentSession().createQuery(sql);
            query.setFirstResult(1);
            query.setMaxResults(10);
        }else if (type_code.equals("upset")){
            sql = "from Movieinfo order by id asc";
            query = hibernateTemplate.getSessionFactory().getCurrentSession().createQuery(sql);
            query.setFirstResult(10);
            query.setMaxResults(15);
        }else {
            sql = "from Movieinfo order by id asc";
            query = hibernateTemplate.getSessionFactory().getCurrentSession().createQuery(sql);
            query.setFirstResult(15);
            query.setMaxResults(20);
        }

        List<Movieinfo> list = query.list();

        return list;
    }

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
}
