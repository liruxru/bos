package com.bonc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bonc.mapper.LoggerMapper;
import com.bonc.pojo.util.LoggerPo;
import com.bonc.service.LoggerService;
@Service(value="loggerService")
public class LoggerServiceImpl implements LoggerService {
	
	@Autowired
	private LoggerMapper loggerMapper;

	@Override
	public void save(LoggerPo loggerPo) {
		loggerMapper.save(loggerPo);
	}
	

}
