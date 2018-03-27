package com.movie.action.userindexaction;/*
 *@author: minz.
 *@create on: 2017/12/29
 */

import com.movie.entity.Ticket;
import com.movie.service.ShowAllTicketsService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.ArrayList;

@Namespace("/ticket")
@Scope("prototype")
@Controller
public class ShowAllTicketAction extends ActionSupport{
    @Resource
    private ShowAllTicketsService showAllTickets;
    private ArrayList<Ticket> tickets;
    @Action(value = "showalltickets",results = {
            @Result(name = "success", location = "/userindex.jsp", type = "redirect")})
    public String execute() {
        tickets = showAllTickets.getalltickets();//得到电影票信息
        ActionContext.getContext().getSession().put("alltickets",tickets);
        return "success";
    }
}
