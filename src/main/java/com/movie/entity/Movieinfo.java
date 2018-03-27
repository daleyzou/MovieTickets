package com.movie.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
public class Movieinfo {
    private int id;
    private String type;
    private String name;
    private String country;
    private String introduce;
    private String director;
    private String actors;
    private Timestamp time;
    private String img;
    private double score;

    public void setId(Integer id) {
        this.id = id;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    @Basic
    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "type")
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "country")
    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    @Basic
    @Column(name = "introduce")
    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    @Basic
    @Column(name = "director")
    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    @Basic
    @Column(name = "actors")
    public String getActors() {
        return actors;
    }

    public void setActors(String actors) {
        this.actors = actors;
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
    @Column(name = "img")
    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Basic
    @Column(name = "score")
    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Movieinfo movieinfo = (Movieinfo) o;

        if (id != movieinfo.id) return false;
        if (Double.compare(movieinfo.score, score) != 0) return false;
        if (type != null ? !type.equals(movieinfo.type) : movieinfo.type != null) return false;
        if (name != null ? !name.equals(movieinfo.name) : movieinfo.name != null) return false;
        if (country != null ? !country.equals(movieinfo.country) : movieinfo.country != null) return false;
        if (introduce != null ? !introduce.equals(movieinfo.introduce) : movieinfo.introduce != null) return false;
        if (director != null ? !director.equals(movieinfo.director) : movieinfo.director != null) return false;
        if (actors != null ? !actors.equals(movieinfo.actors) : movieinfo.actors != null) return false;
        if (time != null ? !time.equals(movieinfo.time) : movieinfo.time != null) return false;
        if (img != null ? !img.equals(movieinfo.img) : movieinfo.img != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = id;
        result = 31 * result + (type != null ? type.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (country != null ? country.hashCode() : 0);
        result = 31 * result + (introduce != null ? introduce.hashCode() : 0);
        result = 31 * result + (director != null ? director.hashCode() : 0);
        result = 31 * result + (actors != null ? actors.hashCode() : 0);
        result = 31 * result + (time != null ? time.hashCode() : 0);
        result = 31 * result + (img != null ? img.hashCode() : 0);
        temp = Double.doubleToLongBits(score);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        return result;
    }
}
