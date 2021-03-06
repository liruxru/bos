package com.bonc.util;

import com.bonc.pojo.Result;

public class ResultUtil {
	
	public  static <T> Result success(T data){
		Result<T> result = new Result<T>();
		result.setCode(0);
		result.setMsg("success");
		result.setData(data);
		return result;
	}
	public  static <T> Result error(int code,String msg,T data){
		Result<T> result = new Result<T>();
		result.setCode(code);
		result.setMsg(msg);
		result.setData(data);
		return result;
	}
	public  static <T> Result error(int code,String msg){
		Result<T> result = new Result<T>();
		result.setCode(code);
		result.setMsg(msg);
		return result;
	}

}
