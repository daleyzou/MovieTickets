package com.movie.action.comment;/**
 * @author Svily_0
 * @create 2018-01-03 11:10
 **/

import com.movie.entity.Comment;
import com.movie.service.CommentService;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import javax.annotation.Resource;
import java.util.ArrayList;

/**
 *
 * @author Svily_0
 * @create 2018-01-03 11:10
 **/

@Namespace("/comment")
@ParentPackage("json-default")
public class ComForMovieAction extends ActionSupport{

    @Resource
    private CommentService commentService;

    private int movieId;
    private int comNumForMovie;
    private int startPage;
    private int pageSize = 10;

    private ArrayList<Comment> list;

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public void setStartPage(int startPage) {
        this.startPage = startPage;
    }

    @Action(value = "getCommentForMovie",results = {@Result(name = "success",type = "json")})
    public String getCommentForMovie(){

        list = commentService.getCommentByPageForMovie(movieId,startPage,pageSize);
        comNumForMovie = commentService.getCommentNumForMovie(movieId);
        return SUCCESS;
    }




    public ArrayList<Comment> getList() {
        return list;
    }

    public int getComNumForMovie() {
        return comNumForMovie;
    }

}
