package com.movie.action.showallmovies;
/*
 *@author: minz.
 *@create on: 2017/12/28
 */

import com.movie.entity.Movieinfo;
import com.movie.service.ShowAllService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import javax.annotation.Resource;
import java.util.ArrayList;

@Namespace("/movie")
@ParentPackage("struts-default")
public class ShowAllMovieAction extends ActionSupport {

    @Resource
    private ShowAllService showall;
    private ArrayList<Movieinfo> movieinfo;
    private String start;//开始数据
    private String page;//动作 0首页 -1上一页 1下一页

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public String getPage() {
        return page;
    }

    public void setPage(String page) {
        this.page = page;
    }

    @Action(value = "showallmovies",results = {
            @Result(name = "success", type = "redirect", location = "/all.jsp")})
    public String showallmovies() {
        int s=Integer.parseInt(start);//查询开始位置
        if(page.equals("0")){
            s = 0;
            start = "0";
        }else if(page.equals("-1")){
            s = Integer.parseInt(start)-10;
            start = (Integer.parseInt(start)-10)+"";
        }else if(page.equals("1")){
            s = Integer.parseInt(start)+10;
            start = (Integer.parseInt(start)+10)+"";
        }
        if(s<0){//页数小于0
            s = 0;
            start = "0";
        }
        movieinfo = showall.getallMovies(s);//得到所有电影list
        if(movieinfo.size()==0){//没有电影
            movieinfo = showall.getallMovies(s-10);
            start = (Integer.parseInt(start)-10)+"";
        }
        ActionContext.getContext().getSession().put("movieinfo",movieinfo);
        ActionContext.getContext().getSession().put("start",start);
        return SUCCESS;
    }

}
