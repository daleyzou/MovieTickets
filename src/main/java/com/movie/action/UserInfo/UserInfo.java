package com.movie.action.UserInfo;

import com.movie.entity.User;
import com.movie.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

@Component
@Namespace("/UserInfo")
@Controller
@ParentPackage("json-default")
public class UserInfo extends ActionSupport implements ModelDriven<User> {

    @Resource
    private UserService userService;

    private User user;
    private String result;
    private String userinput;

    @Action(value = "showUserInfo",results = {@Result(name = "success",type = "json")})
    public String showUserInfo(){
        user = (User) ActionContext.getContext().getSession().get("user");
        return SUCCESS;
    }

    @Action(value = "validateUserName",results = {@Result(name = "success",type = "json")})
    public String validateUserName(){
        int flag = userService.getUserByName(userinput);
        if (flag == 1){
            result = "justdo";//没有这个用户
        }else {
            result = "pleaseno";//用这个用户
        }
        return SUCCESS;
    }



    /**
     * 用户修改自己的信息，将更新后的用户信息放入session中
     * @return
     * @throws Exception
     */
    @Action(value = "updateUser",results = {@Result(name = "success",location = "/ticket/showalltickets",type = "redirect"),
            @Result(name = "error",location = "/error.jsp")})
    public String updateUser() throws Exception {

        int flag = userService.updateUser(user);
        if (flag == 1){
            ActionContext.getContext().getSession().put("user",user);
            return SUCCESS;
        }else {
            return "error";
        }

    }

    public void setUser(User user) {
        this.user = user;
    }

    public User getUser() {
        return user;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public void setUserinput(String userinput) {
        this.userinput = userinput;
    }

    @Override
    public User getModel() {
        return user;
    }
}
