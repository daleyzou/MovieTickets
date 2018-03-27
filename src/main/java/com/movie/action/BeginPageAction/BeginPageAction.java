package com.movie.action.BeginPageAction;

import com.movie.dao.BeginPageDao;
import com.movie.entity.Movieinfo;
import com.movie.service.BeginPageService;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@ParentPackage("json-default")
@Namespace("/BeginPageAction")
public class BeginPageAction extends ActionSupport {
   @Resource
    private BeginPageService beginPageService;

    String type_code;
    List<Movieinfo> list = new ArrayList<Movieinfo>();
    @Action(value = "loadImages",results = {@Result(name = "success",type = "json")})
    public String loadImages() throws Exception {


        //1 调用Service根据typecode获得数据字典对象list
       list = beginPageService.getListByTypeCode(type_code);
//        //2 将list转换为 json格式
//        String json = JSONArray.fromObject(list).toString();
//        //3 将json发送给浏览器
//        ServletActionContext.getResponse().setContentType("application/json;charset=utf-8");
//        ServletActionContext.getResponse().getWriter().write(json);
        return SUCCESS;//告诉struts2不需要进行结果处理

    }


    public void setType_code(String type_code) {
        this.type_code = type_code;
    }

    public void setBeginPageService(BeginPageService beginPageService) {
        this.beginPageService = beginPageService;
    }

    public List<Movieinfo> getList() {
        return list;
    }
}
