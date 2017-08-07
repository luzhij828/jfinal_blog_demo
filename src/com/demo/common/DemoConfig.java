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
    @Override
    public void configConstant(Constants constants) {
        PropKit.use("a_little_config.txt");
        constants.setDevMode(PropKit.getBoolean("devMode",false));
        constants.setViewType(ViewType.JSP);

    }

    @Override
    public void configRoute(Routes routes) {

        routes.add("/index", IndexController.class);
        routes.add("/blog", BlogController.class);			// 第三个参数省略时默认与第一个参数值相同，在此即为 "/blog"
        routes.add("/user", UserController.class);			// 第三个参数省略时默认与第一个参数值相同，在此即为 "/blog"
        routes.add("/", UserController.class);
    }

    @Override
    public void configEngine(Engine engine) {
        //目前这个加载一些网页模板的功能还不是很会用
    }

    @Override
    public void configPlugin(Plugins plugins) {
        DruidPlugin druidPlugin = new DruidPlugin(PropKit.get("jdbcUrl"), PropKit.get("user"), PropKit.get("password").trim());
        plugins.add(druidPlugin);

        ActiveRecordPlugin arp = new ActiveRecordPlugin(druidPlugin);
        plugins.add(arp);
        arp.addMapping("Blog","id",Blog.class);
        arp.addMapping("User","uid",User.class);
    }

    @Override
    public void configInterceptor(Interceptors interceptors) {

    }

    @Override
    public void configHandler(Handlers handlers) {

    }
}
