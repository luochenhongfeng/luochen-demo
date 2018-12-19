package com.luochen.config;

import com.jfinal.config.*;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.dialect.MysqlDialect;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.render.ViewType;
import com.jfinal.template.Engine;
import com.luochen.controller.DemoController;
import com.luochen.model.Test;

import java.util.Properties;

/**
 * @author luochen
 */
public class DemoConfig extends JFinalConfig {
    public void configConstant(Constants constants) {
        constants.setDevMode(true);
        constants.setEncoding("utf-8");
        constants.setViewType(ViewType.JSP);
    }

    public void configRoute(Routes routes) {
        routes.setBaseViewPath("WEB-INF/jsp");
        routes.add("/", DemoController.class);
    }

    public void configEngine(Engine engine) {

    }

    public void configPlugin(Plugins plugins) {
        loadPropertyFile("db.properties");
        DruidPlugin dp = new DruidPlugin(getProperty("db.url"), getProperty("db.username"), getProperty("db.password"), getProperty("db.driver"));
        plugins.add(dp);
        ActiveRecordPlugin arp = new ActiveRecordPlugin(dp);
        arp.setDialect(new MysqlDialect());
        arp.setShowSql(true);

        arp.addMapping("test", "testId", Test.class);

        plugins.add(arp);

    }

    public void configInterceptor(Interceptors interceptors) {

    }

    public void configHandler(Handlers handlers) {

    }
}
