package com.demo.user;

import com.alibaba.fastjson.JSONObject;
import com.demo.common.mode.User;
import com.jfinal.core.Controller;

import java.util.List;

/**
 * Created by luzhijie on 2017/8/4.
 */
public class UserController extends Controller {
    public void index(){
        render("/WEB-INF/jsp/user/login.jsp");
    }
    public void addUI(){
        render("/WEB-INF/jsp/user/addUI.jsp");
    }
    public  void  add(){
        List<User> users = User.dao.findByName(getPara("user.username"));
        boolean flag = true;
        String msg = "";
        JSONObject json = new JSONObject();
        if(users.size()>0){
            flag = false;
            msg = "用户名已存在，请重新注册！";
        }else {
            getModel(User.class).save();
            msg="注册成功！请登录";
        }
        json.put("flag",flag);
        json.put("msg",msg);
        renderJson(json);
    }
    public void login(){
        List<User> users= User.dao.findByNameAndPwd(getPara("username"),getPara("password"));
        boolean flag=false;
        String msg="";
        JSONObject json = new JSONObject();
        if(users.size()>0){
            //这个应该是自己带的方法、、getSession().setAttribute("","");
            setSessionAttr("userInfo",users.get(0));
            flag=true;
            msg="登录成功！";
            redirect("/index");
        }else{
            msg="用户名密码错误！";
        }
        json.put("flag", flag);
        json.put("msg", msg);
        renderJson(json);


    }
}
