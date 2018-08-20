package com.bonc.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bonc.pojo.PageBean;
import com.bonc.pojo.Result;
import com.bonc.pojo.YuanMei;
import com.bonc.service.YuanMeiService;
import com.bonc.util.ResultUtil;

@Controller
@RequestMapping("/yuanMei")
public class YuanMeiController {
	@Autowired
	private YuanMeiService yuanMeiService;
	
	@RequestMapping("toYuanMei")
	public String toYuanMei(){
		return "yuanMei";
	}
	
	@RequestMapping(value="list")
	@ResponseBody
	public PageBean<YuanMei> yuanMeiList(
			@RequestParam(defaultValue="1")int page,
			@RequestParam(defaultValue="10")int rows,
			@RequestParam(defaultValue="1")int status){
		PageBean<YuanMei> yuanMeiList = yuanMeiService.yuanMeiList(page,rows,status);
		return yuanMeiList;
	}
	@RequestMapping("add")
	public String addYuanMei(YuanMei yuanMei) {
		this.yuanMeiService.addYuanMei(yuanMei);
		return "redirect:toYuanMei";
	}
	
	@RequestMapping("delete")
	@ResponseBody
	public Result<int[]> deleteYuanMeis(@RequestParam("ids[]") int[]  yuanMeiIds) {
		this.yuanMeiService.deleteYuanMeiByIds(yuanMeiIds);
		return ResultUtil.success(yuanMeiIds);
	}
	
	@RequestMapping("hide")
	@ResponseBody
	public Result<int[]> hideYuanMeis(@RequestParam("ids[]") int[]  yuanMeiIds) {
		this.yuanMeiService.updateYuanMeis(yuanMeiIds,0);
		return ResultUtil.success(yuanMeiIds);
	}
	@RequestMapping("recover")
	@ResponseBody
	public Result<int[]> recoverYuanMeis(@RequestParam("ids[]") int[]  yuanMeiIds) {
		this.yuanMeiService.updateYuanMeis(yuanMeiIds,1);
		return ResultUtil.success(yuanMeiIds);
	}
	
	
	

}
