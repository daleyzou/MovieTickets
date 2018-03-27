package com.movie.action.comment;/**
 * @author Svily_0
 * @create 2018-01-03 21:15
 **/

import com.movie.entity.Comment;
import com.movie.service.CommentService;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import javax.annotation.Resource;
import java.util.Date;

/**
 *
 * @author Svily_0
 * @create 2018-01-03 21:15
 **/
@Namespace("/comment")
@ParentPackage("json-default")
public class InsertComAction extends ActionSupport{

    @Resource
    private CommentService commentService;

    private Comment comment = new Comment();

    private int userId;
    private String username;
    private int movieId;
    private String content;
    private int flag = 0;

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Action(value = "insertComment",results = {@Result(name = "success",type = "json")})
    public String insertComment(){
        comment.setUsername(username);
        comment.setUserId(userId);
        comment.setMovieId(movieId);
        comment.setContent(content);
        comment.setTime(new Date());
        commentService.insertComment(comment);
        flag = 1;
        return SUCCESS;
    }

    public int getFlag() {
        return flag;
    }
}
