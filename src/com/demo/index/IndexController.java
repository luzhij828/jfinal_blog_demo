package com.demo.index;

import com.demo.blog.BlogInterceptor;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;

/**
 * Created by luzhijie on 2017/8/4.
 */
@Before(BlogInterceptor.class)
public class IndexController extends Controller {
    public  void index(){
        render("/WEB-INF/jsp/index/index.jsp");
    }
}
