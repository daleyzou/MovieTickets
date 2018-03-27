package com.movie.service;

import com.movie.entity.Comment;

import java.util.ArrayList;

/**
 * @author Svily_0
 * @create 2018-01-03 11:05
 **/
public interface CommentService {

    public ArrayList<Comment> getCommentByPageForMovie(int movieId, int startPage, int pageSize);

    public ArrayList<Comment> getCommentByPageForUser(int userId, int startPage, int pageSize);

    public int getCommentNumForMovie(int movieId);

    public int getCommentNumForUser(int userId);

    public int insertComment(Comment comment);
}
