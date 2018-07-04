package com.bonc.mapper;

import java.util.List;

import com.bonc.pojo.JinMei;

public interface JinMeiMapper {
	/**
	 * 列出常用精煤指标
	 * @return
	 */
	List<JinMei> listZhiBiao();
}
