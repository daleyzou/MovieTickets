package com.movie.entity;/*
 *@author: minz.
 *@create on: 2018/1/3
 */

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
public class History {
    private int id;
    private String movieId;
    private String userId;
    private Timestamp time;
    private String imgSrc;
    private String moviename;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "movie_id")
    public String getMovieId() {
        return movieId;
    }

    public void setMovieId(String movieId) {
        this.movieId = movieId;
    }

    @Basic
    @Column(name = "user_id")
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "time")
    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    @Basic
    @Column(name = "img_src")
    public String getImgSrc() {
        return imgSrc;
    }

    public void setImgSrc(String imgSrc) {
        this.imgSrc = imgSrc;
    }

    @Basic
    @Column(name = "moviename")
    public String getMoviename() {
        return moviename;
    }

    public void setMoviename(String moviename) {
        this.moviename = moviename;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        History history = (History) o;

        if (id != history.id) return false;
        if (movieId != null ? !movieId.equals(history.movieId) : history.movieId != null) return false;
        if (userId != null ? !userId.equals(history.userId) : history.userId != null) return false;
        if (time != null ? !time.equals(history.time) : history.time != null) return false;
        if (imgSrc != null ? !imgSrc.equals(history.imgSrc) : history.imgSrc != null) return false;
        if (moviename != null ? !moviename.equals(history.moviename) : history.moviename != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (movieId != null ? movieId.hashCode() : 0);
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (time != null ? time.hashCode() : 0);
        result = 31 * result + (imgSrc != null ? imgSrc.hashCode() : 0);
        result = 31 * result + (moviename != null ? moviename.hashCode() : 0);
        return result;
    }

    public History() {
    }

    public History(int id){
        this.id = id;
    }
}
