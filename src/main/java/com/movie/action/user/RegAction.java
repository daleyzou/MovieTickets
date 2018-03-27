package com.movie.action.user;/**
 * @author Svily_0
 * @create 2018-01-02 14:41
 **/

import com.movie.entity.User;
import com.movie.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Svily_0
 * @create 2018-01-02 14:41
 **/
@Component
@Namespace("/user")
@ParentPackage("json-default")
@Controller
public class RegAction extends ActionSupport{


    @Resource
    private UserService userService;

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

    @Action(value = "reg",results = {@Result(name = "success",type = "json"),@Result(name = "error",type = "json")})
    public String Reg(){
        //没有用户返回1,有此用户返回0
        flag = userService.getUserByName(username);
        Date regTime = new Date();

        if (flag == 1){
            userService.reg(new User(username,password,regTime));
            return SUCCESS;
        }

        return ERROR;
    }

    public int getFlag() {
        return flag;
    }
}
