package com.demo.common.mode;

import com.jfinal.plugin.activerecord.Model;

/**
 * Created by luzhijie on 2017/8/4.
 */
public class Blog extends Model<Blog> {
    public  static final Blog dao = new Blog().dao();

    public User getUser(){

        return  User.dao.findById(getInt("uid"));


    }
}
