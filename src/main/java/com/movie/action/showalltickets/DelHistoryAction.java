package com.movie.action.showalltickets;/*
 *@author: minz.
 *@create on: 2018/1/4
 */

import com.movie.entity.History;
import com.movie.service.DelHistoryService;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import javax.annotation.Resource;

import static com.opensymphony.xwork2.Action.SUCCESS;

@Namespace("/ticket")
@ParentPackage("json-default")
public class DelHistoryAction extends ActionSupport{
    @Resource
    private DelHistoryService delHistoryService;
    private String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Action(value = "delhistick",results = {@Result(name = "success",type = "json")})
    public String delhistick(){
        System.out.println("@@@@@@@@@@@@@@@@@@@"+id);
        History history = new History(Integer.parseInt(id));
        delHistoryService.delht(history);
        return SUCCESS;
    }
}
