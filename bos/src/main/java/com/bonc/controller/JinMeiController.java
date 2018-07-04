package com.bonc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bonc.pojo.JinMei;
import com.bonc.service.JinMeiService;

@Controller
public class JinMeiController {
	@Autowired
	private JinMeiService  jinMeiService;
	
	@RequestMapping(value="jinMeiList",method=RequestMethod.POST)
	@ResponseBody
	public Map jinMeiZhiBiaoList(Model model) {
		List<JinMei> zhiBiaoList = jinMeiService.listZhiBiao();
		Map map = new HashMap<>();
		map.put("total", 100);
		map.put("rows", zhiBiaoList);
		return map;
	}
	
	@RequestMapping(value="toZhiBao",method=RequestMethod.GET)
	public String toZhiBao() {
		return "zhiBiao";
	}

}
