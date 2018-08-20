package com.bonc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bonc.mapper.YuanMeiMapper;
import com.bonc.pojo.PageBean;
import com.bonc.pojo.YuanMei;
import com.bonc.service.YuanMeiService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageRowBounds;
@Service
public class YuanMeiServiceImpl implements YuanMeiService {
	@Autowired
	private YuanMeiMapper yuanMeiMapper;
	@Override
	public PageBean<YuanMei> yuanMeiList(int page, int rows,int status) {
		/**
		 * ① rowBounds
		 */
		int offset = (page-1)*rows;
		int limit = rows;
		/*PageRowBounds rowBounds = new PageRowBounds(offset, limit);
		List<YuanMei> findAll = yuanMeiMapper.findAll(page,rowBounds);
		PageBean<YuanMei> pageBean = new PageBean<>();
		pageBean.setRows(findAll);
		pageBean.setTotal(rowBounds.getTotal());*/
		
		/**
		 * 2. use static method startPage
		 * 3. use static method offsetPage
		 */
		PageHelper.startPage(page, rows);
//		PageHelper.offsetPage(offset, limit)
		List<YuanMei> list = yuanMeiMapper.findAllBystatus(status);
		long total = ((Page)list).getTotal();
//		PageHelper.count(()->yuanMeiMapper.findAll());
		
		PageBean<YuanMei> pageBean = new PageBean<>();
		pageBean.setRows(list);
		pageBean.setTotal(total);
		return pageBean;
	}
	@Override
	public void addYuanMei(YuanMei yuanMei) {
		// 状态设置为1可用
		yuanMei.setStatus(1);
		this.yuanMeiMapper.addYuanMei(yuanMei);
	}
	@Override
	public void deleteYuanMeiByIds(int[] yuanMeiIds) {
		this.yuanMeiMapper.deleteYuanMeiByIds(yuanMeiIds);
	}

}
