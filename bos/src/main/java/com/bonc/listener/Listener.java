package com.bonc.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import lombok.extern.slf4j.Slf4j;

/**
 * 程序监听器
 */
@WebListener("commonlistener")
@Slf4j
public class Listener implements ServletContextListener{


    @Override
    public void contextInitialized(ServletContextEvent sce) {
        log.debug("程序启动");
        // 将项目路径配置到root别名
        ServletContext servletContext = sce.getServletContext();
        String contextPath = servletContext.getContextPath();
        servletContext.setAttribute("root",contextPath);
    }


    @Override
    public void contextDestroyed(ServletContextEvent sce) {
       
    }
}
