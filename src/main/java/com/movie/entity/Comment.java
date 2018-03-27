package com.movie.entity;/**
 * @author Svily_0
 * @create 2018-01-02 22:43
 **/

import org.apache.struts2.components.Text;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Date;

/**
 *
 * @author Svily_0
 * @create 2018-01-02 22:43
 **/
@Entity
public class Comment {

    private int id;
    private String username;
    private Integer userId;
    private Integer movieId;
    private String content;
    private Date time;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "username")
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Basic
    @Column(name = "user_id")
    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "movie_id")
    public Integer getMovieId() {
        return movieId;
    }

    public void setMovieId(Integer movieId) {
        this.movieId = movieId;
    }

    @Basic
    @Column(name = "content")
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Basic
    @Column(name = "time")
    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Comment comment = (Comment) o;

        if (id != comment.id) return false;
        if (username != null ? !username.equals(comment.username) : comment.username != null) return false;
        if (userId != null ? !userId.equals(comment.userId) : comment.userId != null) return false;
        if (movieId != null ? !movieId.equals(comment.movieId) : comment.movieId != null) return false;
        if (content != null ? !content.equals(comment.content) : comment.content != null) return false;
        if (time != null ? !time.equals(comment.time) : comment.time != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (username != null ? username.hashCode() : 0);
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (movieId != null ? movieId.hashCode() : 0);
        result = 31 * result + (content != null ? content.hashCode() : 0);
        result = 31 * result + (time != null ? time.hashCode() : 0);
        return result;
    }

    public Comment() {
    }

    public Comment(String username, Integer userId, Integer movieId, String content, Date time) {
        this.username = username;
        this.userId = userId;
        this.movieId = movieId;
        this.content = content;
        this.time = time;
    }
}
