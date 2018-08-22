package com.bonc.exception.handler;

import lombok.extern.slf4j.Slf4j;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bonc.exception.AdminException;
import com.bonc.pojo.util.Result;
import com.bonc.util.ResultUtil;

@ControllerAdvice
@Slf4j
public class ExceptionHandle {
	@ResponseBody
	@ExceptionHandler(value=AdminException.class)
	public Result Handle(AdminException adminException){
		log.error(adminException.getMessage());
		return ResultUtil.error(adminException.getCode(),
				adminException.getMessage());
		
	}
	@ExceptionHandler(value=Exception.class)
	@ResponseBody
	public Result Handle(Exception exception){
		if("null".equals(exception.getMessage())){
			log.error("系统错误:{}",exception.getMessage()+"point");
		}else{
			log.error("系统错误:{}",exception.getMessage());
		}
		
		return ResultUtil.error(-1,
				exception.getMessage());
		
	}

}
