package com.bonc.exception;

import com.bonc.enums.ExceptionEnum;


public class AdminException  extends RuntimeException {
	private static final long serialVersionUID = -6103629681395540479L;
	private Integer  code;
	private String msg;
	public AdminException(Integer code, String message) {
		super(message);
		this.code = code;
		this.msg = message;
		
	}
	public AdminException(ExceptionEnum resultEnum) {
		// 调用重载构造器
		this(resultEnum.getCode(), resultEnum.getMsg());
		this.msg =  resultEnum.getMsg();
	}
	
	public int getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	@Override
	public String getMessage() {
		// TODO Auto-generated method stub
		return this.msg;
	}
	
	
	
	
	
	
}
