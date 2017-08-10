package com.demo.user;

import com.demo.common.mode.User;

import java.util.List;

/**
 * Created by luzhijie on 2017/8/10.
 */
public class UserService {


    public List<User> findAll(){
        return User.dao.find("select * from user");

    }
    public  List<User> findByNameAndPwd(String name,String password){

        return  User.dao.find("select * from user where username=? and password=?",name,password);
    }

    public List<User> findByName(String name){
        return  User.dao.find("select * from user where username='"+name+"'");
    }
    public List<User> findByName2(int uid ,String name){
        return  User.dao.find("select * from user where username='"+name+"' and uid != "+uid);
    }

    public User findById(int uid){
        return  User.dao.findById(uid);
    }
}
