package com.movie.action.showalltickets;/*
 *@author: minz.
 *@create on: 2018/1/3
 */

import com.movie.entity.History;
import com.movie.service.HistoryTicketService;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import javax.annotation.Resource;
import java.util.ArrayList;

@Namespace("/ticket")
@ParentPackage("json-default")
public class HistoryTicketAction extends ActionSupport{

    @Resource
    private HistoryTicketService historyTicketService;

    private String userid;
    private ArrayList<History> hts;
    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    @Action(value = "histicks",results = {@Result(name = "success",type = "json")})
    public String histicks(){
        hts = historyTicketService.getht(userid);
        return SUCCESS;
    }

    public ArrayList<History> getHts() {
        return hts;
    }
}
