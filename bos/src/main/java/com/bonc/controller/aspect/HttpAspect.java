package com.bonc.controller.aspect;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.Servlet;
import javax.servlet.http.HttpServletRequest;

import lombok.extern.slf4j.Slf4j;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
/**
 * 统一日志处理
 * @author j
 *
 */
@Aspect
@SuppressWarnings("all")
@Slf4j
@Component
public class HttpAspect {
	
	/**
	 * 定义切点
	 */
	@Pointcut("execution(public * com.bonc.controller.AdminController.*(..))")
	public void logd(){
	}
	
	/**
	 * 定义方法前切点
	 */
	@Before("logd()")
	public void beforeLog(JoinPoint joinPoint){
		
		ServletRequestAttributes requestAttributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
		HttpServletRequest request = requestAttributes.getRequest();
		
		String uri = request.getRequestURI();
		String method = request.getMethod();
		String ip = request.getRemoteAddr();
		String className = joinPoint.getSignature().getDeclaringTypeName();
		String methodName = joinPoint.getSignature().getName();
		String argsString = Arrays.deepToString(joinPoint.getArgs());
		
		
		log.info("请求路径{}",uri);
		log.info("请求方法{}",method);
		log.info("请求ip{}",ip);
		log.info("请求的控制器地址{}",className+"."+methodName);
		log.info("传入方法携带的参数{}",argsString);
		
		Object[] args = joinPoint.getArgs();
		
	}
	
	/**
	 * 定义执行后切点
	 */
	@AfterReturning("logd()")
	public void afterLog(){
		
	}
	
	/**
	 * 
	 * @param joinPoint
	 * @param e
	 */
    @AfterThrowing(value = "logd()", throwing = "e")
    public void doAfter(JoinPoint joinPoint, Exception e){
        System.out.println("=====SysLogAspect异常通知开始=====");
        log.error(e.getMessage());
    }
    
    /**
     * 获取返回值的切面
     * @param joinPoint
     * @param object
     */
    @AfterReturning(pointcut="logd()",returning="object")
    public void around(JoinPoint joinPoint,Object object){
    	log.info("返回值为{}",object);
    }


}
