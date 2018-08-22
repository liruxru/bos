package com.bonc.mapper;

import java.util.List;

import com.bonc.pojo.entity.JinMei;

public interface JinMeiMapper {
	/**
	 * 列出常用精煤指标
	 * @return
	 */
	List<JinMei> listZhiBiao();
	/**
	 * 添加精煤指标数据
	 * @param jinMei
	 */
	void insert(JinMei jinMei);
}
