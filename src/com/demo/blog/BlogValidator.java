package com.demo.blog;


import com.demo.common.mode.Blog;
import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;

/**
 * Created by luzhijie on 2017/8/4.
 */
public class BlogValidator extends Validator {
    @Override
    protected void validate(Controller controller) {
        validateRequiredString("blog.title","titleMsg","请输入Blog标题！");
        validateRequiredString("blog.content","contentMsg","请输入Blog内容！");
    }

    @Override
    protected void handleError(Controller controller) {
        controller.keepModel(Blog.class);
        String actionKey = getActionKey();
        if (actionKey.equals("/blog/seve")){
            controller.render("/WEB-INF/jsp/blog/addUI.jsp");
        }else if (actionKey.equals("/blog/update")){
            controller.render("/WEB-INF/jsp/blog/editUI.jsp");
        }
    }
}
