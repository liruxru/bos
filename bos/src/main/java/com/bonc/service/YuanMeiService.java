package com.bonc.service;


import com.bonc.pojo.PageBean;
import com.bonc.pojo.YuanMei;

public interface YuanMeiService {

	PageBean<YuanMei> yuanMeiList(int page, int rows, int status);

	void addYuanMei(YuanMei yuanMei);

}
