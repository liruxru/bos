package com.bonc.pojo.util;

import lombok.Data;

/**
 * http请求返回对象
 * @author j
 *
 */
@Data
public class Result<T> {
	private Integer code;//错误代码
	private String msg;
	private T data;

}
