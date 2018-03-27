package com.movie.action.comment;/**
 * @author Svily_0
 * @create 2018-01-03 14:54
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

import static com.opensymphony.xwork2.Action.SUCCESS;

/**
 *
 * @author Svily_0
 * @create 2018-01-03 14:54
 **/

@Namespace("/comment")
@ParentPackage("json-default")
public class ComForUserAction extends ActionSupport{


    @Resource
    private CommentService commentService;


    private ArrayList<Comment> list;

    private int userId;
    private int comNumForUser;
    private int startPage;
    private int pageSize = 10;

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setStartPage(int startPage) {
        this.startPage = startPage;
    }

    @Action(value = "getCommentForUser",results = {@Result(name = "success",type = "json")})
    public String getCommentForUser(){

        list = commentService.getCommentByPageForUser(userId,startPage,pageSize);
        comNumForUser = commentService.getCommentNumForUser(userId);
        return SUCCESS;
    }

    public ArrayList<Comment> getList() {
        return list;
    }

    public int getComNumForUser() {
        return comNumForUser;
    }

    public int getUserId() {
        return userId;
    }
}
