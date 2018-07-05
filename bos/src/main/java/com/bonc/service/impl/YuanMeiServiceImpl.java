package com.bonc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bonc.mapper.YuanMeiMapper;
import com.bonc.pojo.YuanMei;
import com.bonc.service.YuanMeiService;
@Service
public class YuanMeiServiceImpl implements YuanMeiService {
	@Autowired
	private YuanMeiMapper yuanMeiMapper;
	@Override
	public List<YuanMei> yuanMeiList() {
		return yuanMeiMapper.findAll();
	}

}
