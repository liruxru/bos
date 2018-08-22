package com.bonc.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import com.bonc.pojo.entity.YuanMei;

public interface YuanMeiMapper {


	 List<YuanMei> findAll(int page, RowBounds rowBounds);

	List<YuanMei> findAll();

	void addYuanMei(YuanMei yuanMei);

	List<YuanMei> findAllBystatus(int status);

	void deleteYuanMeiByIds(int[] yuanMeiIds);

	void updateYuanMeis(Map<String, Object> params);

}
