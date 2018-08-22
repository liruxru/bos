package com.bonc.pojo.util;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class LoggerPo {
	private String sessionId;
	private String clientIp;
	private String uri;
	private String method;
	private String paramData;
	private Integer statusCode;
	private String returnData;
	private Integer timeConsuming;
	private Timestamp beginTime;
	private Timestamp returnTime;
	

}
