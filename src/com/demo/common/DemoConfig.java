package com.demo.common;

import com.demo.blog.BlogController;
import com.demo.common.mode.Blog;
import com.demo.common.mode.User;
import com.demo.index.IndexController;
import com.demo.user.UserController;
import com.jfinal.config.*;
import com.jfinal.core.JFinal;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.render.ViewType;
import com.jfinal.template.Engine;

/**
 * Created by luzhijie on 2017/8/4.
 */
public class DemoConfig extends JFinalConfig {

    public static void main(String[] args) {
        JFinal.start("web",80,"/");
    }
    //常量配置
    @Override
    public void configConstant(Constants constants) {

        PropKit.use("a_little_config.txt");

        constants.setDevMode(PropKit.getBoolean("devMode",false));

        //使用viewType.jsp渲染的话，好像没有办法使用公共网页模板引擎
        constants.setViewType(ViewType.JSP);

    }
    //配置路由
    @Override
    public void configRoute(Routes routes) {

        routes.add("/index", IndexController.class);
        routes.add("/blog", BlogController.class);			// 第三个参数省略时默认与第一个参数值相同，在此即为 "/blog"
        routes.add("/user", UserController.class);			// 第三个参数省略时默认与第一个参数值相同，在此即为 "/blog"
        routes.add("/", UserController.class);
    }
    //加载公共网页模板
    @Override
    public void configEngine(Engine engine) {
        //目前这个加载一些网页模板的功能还不是很会用

//        engine.addSharedFunction("/WEB-INF/jsp/common/_paginate.html");
//        engine.addSharedFunction("/WEB-INF/jsp/common/_testPage.html");

    }
    //插件配置一般配置数据库连接池
    @Override
    public void configPlugin(Plugins plugins) {
        DruidPlugin druidPlugin = new DruidPlugin(PropKit.get("jdbcUrl"), PropKit.get("user"), PropKit.get("password").trim());
        plugins.add(druidPlugin);

        ActiveRecordPlugin arp = new ActiveRecordPlugin(druidPlugin);
        plugins.add(arp);
        //从表映射到mode
        arp.addMapping("Blog","id",Blog.class);
        arp.addMapping("User","uid",User.class);
    }
    //全局拦截器
    @Override
    public void configInterceptor(Interceptors interceptors) {

    }

    @Override
    public void configHandler(Handlers handlers) {

    }
}
