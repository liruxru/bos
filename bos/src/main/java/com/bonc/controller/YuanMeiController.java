package com.bonc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public List<YuanMei> yuanMeiList(){
		List<YuanMei> yuanMeiList = yuanMeiService.yuanMeiList();
		Map<String,Object> map = new HashMap<>();
		map.put("total", 100);
		map.put("rows", yuanMeiList);
		return yuanMeiList;
	}

}
