package com.demo.blog;

import com.demo.common.mode.Blog;
import com.jfinal.plugin.activerecord.Page;

/**
 * Created by luzhijie on 2017/8/4.
 */
public class BlogService {
    public Page<Blog> paginate(int pagNumber, int pageSize) {
        return Blog.dao.paginate(pagNumber, pageSize, "select *", "from blog order by id asc");

    }

    public Blog findById(int id) {
        return Blog.dao.findById(id);
    }

    public void deleteByID(int id) {
        Blog.dao.deleteById(id);
    }
}
