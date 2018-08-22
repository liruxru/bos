package com.bonc.interceptor;

import java.sql.Timestamp;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.bonc.pojo.util.LoggerPo;
import com.bonc.service.LoggerService;
import com.bonc.util.SpringContextUtil;


/**
 * 日志拦截器
 */
public class LogInterceptor implements HandlerInterceptor {
	
	private static final String REQUEST_START_TIME="requestBeginTime";
    private static final String LOGGER_ENTITY="loggerPo";
    private static final String LOGGER_RETURN="loggerReturnData";

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
       
    	// 创建日志实体
        LoggerPo loggerPo=new LoggerPo();
    	// 请求方法
    	String method = httpServletRequest.getMethod();
    	// 请求ip
    	String ip = httpServletRequest.getRemoteHost();
    	// 请求地址
    	String uri = httpServletRequest.getRequestURI();
    	 // 获取请求参数
        Map<String, String[]> parameterMap = httpServletRequest.getParameterMap();
        String paramData= JSON.toJSONString(parameterMap, SerializerFeature.WriteMapNullValue);
        // 获取sessionId
        String sessionId = httpServletRequest.getSession().getId();
        
        // 设置请求类型
        loggerPo.setUri(uri);
        loggerPo.setMethod(method);
        loggerPo.setClientIp(ip);
        loggerPo.setSessionId(sessionId);
        loggerPo.setParamData(paramData);
        httpServletRequest.setAttribute(REQUEST_START_TIME,System.currentTimeMillis());
        httpServletRequest.setAttribute(LOGGER_ENTITY,loggerPo);
        return true;
    	
    	
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
    	 //获取请求状态码
        Integer status=httpServletResponse.getStatus();
        
        //结束时间
        long endTime=System.currentTimeMillis();
        //开始时间
        long startTime= (long) httpServletRequest.getAttribute(REQUEST_START_TIME);
        LoggerPo loggerPo= (LoggerPo) httpServletRequest.getAttribute(LOGGER_ENTITY);

        //设置返回时间差
        loggerPo.setTimeConsuming(Integer.valueOf(endTime-startTime+""));
        //设置时间
        loggerPo.setBeginTime(new Timestamp(startTime));
        loggerPo.setReturnTime(new Timestamp(endTime));

        loggerPo.setStatusCode(status);


        //设置返回值
        loggerPo.setReturnData(JSON.toJSONString(httpServletRequest.getAttribute(LOGGER_RETURN),SerializerFeature.WriteMapNullValue));
        // 静态获取bean --> loggerService
        LoggerService loggerService = (LoggerService) SpringContextUtil.getBean("loggerService");
        loggerService.save(loggerPo);

    }
    
    /**
     * 使用这种方法也可以实现静态获取bean
     * @param clazz
     * @param request
     * @return
     */
    private <T> T getDAO(Class<T> clazz,HttpServletRequest request){
        BeanFactory factory= WebApplicationContextUtils.
                getRequiredWebApplicationContext(request.getServletContext());
        return  factory.getBean(clazz);
    }
}
