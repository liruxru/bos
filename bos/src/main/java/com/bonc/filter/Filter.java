package com.bonc.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * 日志拦截器
 */
@WebFilter(filterName = "/*")
public class Filter implements javax.servlet.Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {





        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
