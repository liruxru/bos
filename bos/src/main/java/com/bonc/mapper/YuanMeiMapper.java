package com.bonc.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.bonc.pojo.YuanMei;

public interface YuanMeiMapper {


	 List<YuanMei> findAll(int page, RowBounds rowBounds);

	List<YuanMei> findAll();

	void addYuanMei(YuanMei yuanMei);

	List<YuanMei> findAllBystatus(int status);

}
