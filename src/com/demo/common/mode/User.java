package com.demo.common.mode;

import com.jfinal.plugin.activerecord.Model;

import java.util.List;

/**
 * Created by luzhijie on 2017/8/4.
 */
public class User extends Model<User> {

    public static final User dao = new User().dao();
    public List<User> findAll(){
        return find("select * from user");

    }
    public  List<User> findByNameAndPwd(String name,String password){

        return  find("select * from user where username=? and password=?",name,password);
    }

    public List<User> findByName(String name){
        return  find("select * from user where username='"+name+"'");
    }

    public  List<Blog> getBlogs(){
        return  Blog.dao.find("select * from blog where uid=?",getInt("uid"));
    }
}
