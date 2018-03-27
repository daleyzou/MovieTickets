package com.movie.action.showalltickets;/*
 *@author: minz.
 *@create on: 2017/12/29
 */

import com.movie.entity.Ticket;
import com.movie.entity.User;
import com.movie.service.AddTicketService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

@Namespace("/ticket")
@Scope("prototype")
@Controller
public class BuyTicketsAction extends ActionSupport{

    @Resource
    private AddTicketService addTicketService;

    String time;
    String movieName;
    String seatId;
    String ticketnum;
    String money;
    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getSeatId() {
        return seatId;
    }

    public void setSeatId(String seatId) {
        this.seatId = seatId;
    }

    public String getTicketnum() {
        return ticketnum;
    }

    public void setTicketnum(String ticketnum) {
        this.ticketnum = ticketnum;
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money;
    }



    @Action(value = "buytickets",results = {
            @Result(name = "success", location = "showalltickets", type = "redirect")})
    public String execute() {
/*读取数据，然后存入数据库*/
        Ticket ticket = new Ticket();
        User user = (User)ActionContext.getContext().getSession().get("user");
        ticket.setMovieName(movieName);
        ticket.setCode("");
        ticket.setSeatId(seatId);
        ticket.setStauts("");
        ticket.setTime(time);
        ticket.setUserId(user.getId()+"");
        ticket.setUsername(user.getUsername());
        addTicketService.add_ticket(ticket);
        return "success";
    }
}
