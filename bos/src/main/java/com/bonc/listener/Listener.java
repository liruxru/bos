package com.bonc.listener;

import lombok.extern.slf4j.Slf4j;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import javax.servlet.http.HttpSessionBindingEvent;

/**
 * 程序监听器
 */
@WebListener("commonlistener")
@Slf4j
public class Listener implements ServletContextListener{


    @Override
    public void contextInitialized(ServletContextEvent sce) {
        log.debug("程序启动");
    }


    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // 将项目路径配置到root别名
        ServletContext servletContext = sce.getServletContext();
        String contextPath = servletContext.getContextPath();
        servletContext.setAttribute("root",contextPath);
    }
}
