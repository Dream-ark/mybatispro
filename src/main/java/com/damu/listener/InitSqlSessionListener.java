package com.damu.listener;

import com.damu.utils.SqlSessionFactoryUtils;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Created by Vivian on 2019/4/3.
 */
@WebListener
public class InitSqlSessionListener implements ServletContextListener {
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        System.out.println("容器加载中...");
        // 初始化我们的SqlSesionFactory对象
        SqlSessionFactoryUtils.initSqlSessionFactory();
    }

    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        System.out.println("容器销毁中...");
        // 关闭SqlSession对象
        SqlSessionFactoryUtils.close();
    }
}
