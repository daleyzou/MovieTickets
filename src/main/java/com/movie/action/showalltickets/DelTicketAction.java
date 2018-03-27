package com.movie.action.showalltickets;/*
 *@author: minz.
 *@create on: 2017/12/30
 */

import com.movie.entity.Ticket;
import com.movie.service.DelTicketService;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

@Namespace("/ticket")
@Scope("prototype")
@Controller
@ParentPackage("struts-default")
public class DelTicketAction extends ActionSupport{
    @Resource
    private DelTicketService delTicketService;

    private String tid;

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    @Action(value = "delticket",results = {
            @Result(name = "success", location = "/ticket/showalltickets", type = "redirect")})
    public String execute(){
        //user = (User) ActionContext.getContext().getSession().get("userinfo");
        int i = Integer.parseInt(tid);
        Ticket ticket = new Ticket(i);
        delTicketService.del_ticket(ticket);
        return "success";
    }
}
