package com.bonc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bonc.mapper.JinMeiMapper;
import com.bonc.pojo.entity.JinMei;
import com.bonc.service.JinMeiService;

@Service
public class JinMeiServiceImpl implements JinMeiService {
	@Autowired
	private JinMeiMapper  jinMeiMapper;
	@Override
	public List<JinMei> listZhiBiao() {
		return jinMeiMapper.listZhiBiao();
	}
	@Override
	public void addZhiBiao(JinMei jinMei) {
		jinMeiMapper.insert(jinMei);
	}

}
