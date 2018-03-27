package com.movie.action.showallmovies;/*
 *@author: minz.
 *@create on: 2018/1/1
 */

import com.movie.entity.Movieinfo;
import com.movie.service.ShowMovieDescService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;

import javax.annotation.Resource;

@Namespace("/movie")
@Scope("prototype")
public class ShowMovieDesc extends ActionSupport{
    @Resource
    private ShowMovieDescService showMovieDescService;

    private String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Action(value = "moviedesc",results = {
            @Result(name = "success", type = "redirect", location = "/descinfo.jsp")})
    public String execute(){
        int ID = Integer.parseInt(id);
        Movieinfo moviedesc = showMovieDescService.getinfo(ID);
        ActionContext.getContext().getSession().put("moviedesc",moviedesc);
        return "success";
    }
}
