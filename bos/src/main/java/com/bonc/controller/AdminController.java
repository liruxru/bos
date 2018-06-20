package com.bonc.controller;

import com.bonc.pojo.Admin;
import com.bonc.pojo.Result;
import com.bonc.service.AdminService;
import com.bonc.util.ResultUtil;

import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@Controller
@Slf4j
public class AdminController {
    @Autowired
    private AdminService adminService;
    @SneakyThrows
    @ResponseBody
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public Result<Admin> login(Admin admin, HttpServletRequest request){
       adminService.login(admin.getAdminName(),
        		admin.getAdminPass());
        return  ResultUtil.success(admin);
    }
    
    @RequestMapping(value="/registry",method=RequestMethod.POST)
    @ResponseBody
    @SneakyThrows
    private Result<Admin> registry(Admin admin,HttpServletRequest request) {
    	Admin registry=null;
		try {
			registry = adminService.registry(admin);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return  ResultUtil.success(registry);
    }
    
    
}
