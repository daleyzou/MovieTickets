package com.movie.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
public class Ticket {
    private int id;
    private String userId;
    private String username;
    private String movieName;
    private String code;
    private String seatId;
    private String stauts;
    private String time;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
    @Column(name = "username")
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Basic
    @Column(name = "movie_name")
    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    @Basic
    @Column(name = "code")
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Basic
    @Column(name = "seat_id")
    public String getSeatId() {
        return seatId;
    }

    public void setSeatId(String seatId) {
        this.seatId = seatId;
    }

    @Basic
    @Column(name = "stauts")
    public String getStauts() {
        return stauts;
    }

    public void setStauts(String stauts) {
        this.stauts = stauts;
    }

    @Basic
    @Column(name = "time")
    public String  getTime() {
        return time;
    }

    public void setTime(String  time) {
        this.time = time;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Ticket ticket = (Ticket) o;

        if (id != ticket.id) return false;
        if (userId != null ? !userId.equals(ticket.userId) : ticket.userId != null) return false;
        if (username != null ? !username.equals(ticket.username) : ticket.username != null) return false;
        if (movieName != null ? !movieName.equals(ticket.movieName) : ticket.movieName != null) return false;
        if (code != null ? !code.equals(ticket.code) : ticket.code != null) return false;
        if (seatId != null ? !seatId.equals(ticket.seatId) : ticket.seatId != null) return false;
        if (stauts != null ? !stauts.equals(ticket.stauts) : ticket.stauts != null) return false;
        if (time != null ? !time.equals(ticket.time) : ticket.time != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (username != null ? username.hashCode() : 0);
        result = 31 * result + (movieName != null ? movieName.hashCode() : 0);
        result = 31 * result + (code != null ? code.hashCode() : 0);
        result = 31 * result + (seatId != null ? seatId.hashCode() : 0);
        result = 31 * result + (stauts != null ? stauts.hashCode() : 0);
        result = 31 * result + (time != null ? time.hashCode() : 0);
        return result;
    }
    public Ticket(){
    }
    public Ticket(int id){
        this.id=id;
    }
}
