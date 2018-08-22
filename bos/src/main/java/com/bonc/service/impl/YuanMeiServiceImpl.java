package com.bonc.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bonc.mapper.YuanMeiMapper;
import com.bonc.pojo.entity.YuanMei;
import com.bonc.pojo.util.PageBean;
import com.bonc.service.YuanMeiService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
@Service
public class YuanMeiServiceImpl implements YuanMeiService {
	@Autowired
	private YuanMeiMapper yuanMeiMapper;
	@Override
	public PageBean<YuanMei> yuanMeiList(int page, int rows,int status) {
		/**
		 * ① rowBounds
		 * 分页查询  具体文档查看github 分页插件
		 * https://github.com/pagehelper/Mybatis-PageHelper/blob/master/wikis/en/HowToUse.md
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
	public YuanMei addYuanMei(YuanMei yuanMei) {
		// 状态设置为1可用
		yuanMei.setStatus(1);
		this.yuanMeiMapper.addYuanMei(yuanMei);
		return yuanMei;
	}
	@Override
	public void deleteYuanMeiByIds(int[] yuanMeiIds) {
		this.yuanMeiMapper.deleteYuanMeiByIds(yuanMeiIds);
	}
	@Override
	public void updateYuanMeis(int[] yuanMeiIds, int status) {
		// 将参数封装成map进行批量更新  https://www.cnblogs.com/exmyth/p/5757137.html
		Map<String,Object> params = new HashMap<>();
		params.put("yuanMeiIds", yuanMeiIds);
		params.put("status", status);
		this.yuanMeiMapper.updateYuanMeis(params);
	}
	

}
