package com.bonc.service;


import com.bonc.pojo.entity.YuanMei;
import com.bonc.pojo.util.PageBean;

public interface YuanMeiService {

	PageBean<YuanMei> yuanMeiList(int page, int rows, int status);

	YuanMei addYuanMei(YuanMei yuanMei);

	void deleteYuanMeiByIds(int[] yuanMeiIds);

	void updateYuanMeis(int[] yuanMeiIds, int status);

}
