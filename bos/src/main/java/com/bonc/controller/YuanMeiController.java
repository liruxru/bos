package com.bonc.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bonc.pojo.PageBean;
import com.bonc.pojo.YuanMei;
import com.bonc.service.YuanMeiService;

@Controller
public class YuanMeiController {
	@Autowired
	private YuanMeiService yuanMeiService;
	
	@RequestMapping("/toYuanMei")
	public String toYuanMei(){
		return "yuanMei";
	}
	
	@RequestMapping(value="yuanMeiList")
	@ResponseBody
	public PageBean<YuanMei> yuanMeiList(
			@RequestParam(defaultValue="1")int page,
			@RequestParam(defaultValue="10")int rows,
			@RequestParam(defaultValue="1")int status){
		PageBean<YuanMei> yuanMeiList = yuanMeiService.yuanMeiList(page,rows,status);
		return yuanMeiList;
	}
	@RequestMapping(value="addYuanMei")
	public String addYuanMei(YuanMei yuanMei) {
		this.yuanMeiService.addYuanMei(yuanMei);
		return "redirect:toYuanMei";
	}
	
	

}
