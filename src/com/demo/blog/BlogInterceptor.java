package com.demo.blog;

import com.demo.common.mode.User;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;

/**
 * Created by luzhijie on 2017/8/4.
 */
public class BlogInterceptor implements Interceptor{

    @Override
    public void intercept(Invocation invocation) {
        Controller controller = invocation.getController();
        User loginUser = controller.getSessionAttr("userInfo");
        if (loginUser!=null){
            invocation.invoke();
        }else {
            controller.redirect("/user");
        }
    }

}
