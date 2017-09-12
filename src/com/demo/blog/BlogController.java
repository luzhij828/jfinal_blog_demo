package com.demo.blog;

import com.demo.common.mode.Blog;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;

/**
 * Created by luzhijie on 2017/8/4.
 */
@Before(BlogInterceptor.class)
public class BlogController extends Controller {

    static BlogService service = new BlogService();
    public  void index(){
        setAttr("blogPage",service.paginate(getParaToInt(0,1),3));
        render("/WEB-INF/jsp/blog/blog.jsp");
    }
    public void  addUI(){
        render("/WEB-INF/jsp/blog/addUI.jsp");
    }

    @Before(BlogValidator.class)
    public void  save(){

        getModel(Blog.class).save();
        redirect("/blog");
    }

    public void  editUI(){
        setAttr("blog",service.findById(getParaToInt()).put("page_title","修改"));
        render("/WEB-INF/jsp/blog/editUI.jsp");
    }
    public  void  viewUI(){
        setAttr("blog",service.findById(getParaToInt()).put("page_title","查看"));
        render("/WEB-INF/jsp/blog/viewUI.jsp");
    }
    public void update(){
        getModel(Blog.class).update();
        redirect("/blog");
    }
    public  void  delete(){
        service.deleteByID(getParaToInt());
        redirect("/blog");
    }
}
