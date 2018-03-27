package com.movie.dao;

import com.movie.entity.Comment;

import java.util.ArrayList;

/**
 * @author Svily_0
 * @create 2018-01-02 22:50
 **/
public interface CommentDao {

    public ArrayList<Comment> getCommentByPageForMovie(int movieId, int startPage,int pageSize);

    public ArrayList<Comment> getCommentByPageForUser(int userId, int startPage, int pageSize);

    public int getCommentNumForMovie(int movieId);

    public int getCommentNumForUser(int userId);

    public int insertComment(Comment comment);

}
