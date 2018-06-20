package com.bonc.enums;


public enum ExceptionEnum {
	UNKNOW_ERROR(-1,"unknow error"),
	SUCCESS(0,"scuccess"),
	REGISTRY_REPEAT(1,"same adminName have be registry"),
	UNCORRECT_PASS(2,"username or pass not correct")
	;
	private int code;
	private String msg;
	ExceptionEnum(Integer code, String msg) {
		this.code = code;
		this.msg = msg;
	}
	ExceptionEnum() {
		// TODO Auto-generated constructor stub
	}
	public Integer getCode() {
		return code;
	}
	public String getMsg() {
		return msg;
	}
	
	
	

}
