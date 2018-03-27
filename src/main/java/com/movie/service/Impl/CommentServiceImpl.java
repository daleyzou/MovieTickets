package com.movie.service.Impl;/**
 * @author Svily_0
 * @create 2018-01-03 11:07
 **/

import com.movie.dao.CommentDao;
import com.movie.entity.Comment;
import com.movie.service.CommentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;

/**
 *
 * @author Svily_0
 * @create 2018-01-03 11:07
 **/
@Service
public class CommentServiceImpl implements CommentService{

    @Resource
    private CommentDao commentDao;

    @Override
    public ArrayList<Comment> getCommentByPageForMovie(int movieId, int startPage, int pageSize) {
        return commentDao.getCommentByPageForMovie(movieId,startPage,pageSize);
    }

    @Override
    public ArrayList<Comment> getCommentByPageForUser(int userId, int startPage, int pageSize) {
        return commentDao.getCommentByPageForUser(userId,startPage,pageSize);
    }

    @Override
    public int getCommentNumForMovie(int movieId) {
        return commentDao.getCommentNumForMovie(movieId);
    }

    @Override
    public int getCommentNumForUser(int userId) {
        return commentDao.getCommentNumForUser(userId);
    }

    @Override
    public int insertComment(Comment comment) {
        return commentDao.insertComment(comment);
    }
}
