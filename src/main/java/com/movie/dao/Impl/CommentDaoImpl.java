package com.movie.dao.Impl;/**
 * @author Svily_0
 * @create 2018-01-02 23:05
 **/

import com.movie.dao.CommentDao;
import com.movie.entity.Comment;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Svily_0
 * @create 2018-01-02 23:05
 **/

@Component
@Transactional
public class CommentDaoImpl implements CommentDao{

    @Resource
    private SessionFactory sessionFactory;

    @Resource
    private HibernateTemplate hibernateTemplate;

    @Override
    public ArrayList<Comment> getCommentByPageForMovie(int movieId, int startPage, int pageSize) {

        ArrayList<Comment> list;

        Query query = sessionFactory.openSession().createQuery("from Comment where movieId =:MovieId");
        query.setParameter("MovieId",movieId);
        query.setFirstResult(startPage);
        query.setMaxResults(startPage+pageSize);
        list = (ArrayList<Comment>) query.list();

        return list;
    }

    @Override
    public ArrayList<Comment> getCommentByPageForUser(int userId, int startPage, int pageSize) {

        ArrayList<Comment> list;

        Query query = sessionFactory.openSession().createQuery("from Comment where userId =:UserId");
        query.setParameter("UserId",userId);
        query.setFirstResult(startPage);
        query.setMaxResults(startPage+pageSize);
        list = (ArrayList<Comment>) query.list();

        return list;
    }

    @Override
    public int getCommentNumForMovie(int movieId) {
        ArrayList<Comment> list;
        int count = 0;
        Query query = sessionFactory.openSession().createQuery("from Comment where movieId =:MovieId");
        query.setParameter("MovieId",movieId);
        list = (ArrayList<Comment>) query.list();
        for (int i=0;i<list.size();i++){
            count++;
        }
        return count;
    }

    @Override
    public int getCommentNumForUser(int userId) {
        ArrayList<Comment> list;
        int count = 0;
        Query query = sessionFactory.openSession().createQuery("from Comment where userId =:UserId");
        query.setParameter("UserId",userId);
        list = (ArrayList<Comment>) query.list();

        for (int i=0;i<list.size();i++){
            count++;
        }
        return count;
    }

    @Override
    public int insertComment(Comment comment) {
        return (Integer) hibernateTemplate.save(comment);
    }
}
