package com.movie.action.user;/**
 * @author Svily_0
 * @create 2018-01-02 10:31
 **/

import com.movie.entity.User;
import com.movie.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

/**
 *
 * @author Svily_0
 * @create 2018-01-02 10:31
 **/

@Component
@Namespace("/user")
@Controller
@ParentPackage("json-default")
public class LoginAction extends ActionSupport{

    @Resource
    private UserService userService;

    private User user = new User();
    private String username;
    private String password;
    private int flag;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }



    @Action(value = "login",results = {@Result(name = "success",type = "json"),@Result(name = "error",type = "json")})
    public String login(){

        user = userService.login(new User(username,password));

        if (user != null){
            ActionContext.getContext().getSession().put("user",user);
            flag = 1;
            return SUCCESS;
        }

        return ERROR;

    }

    @Action(value = "exit",results = {@Result(name = "success",type = "json")})
    public String exit(){
        ActionContext.getContext().getSession().put("user",null);
        return SUCCESS;
    }

    public int getFlag() {
        return flag;
    }
}
