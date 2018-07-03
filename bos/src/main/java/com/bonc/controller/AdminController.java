package com.bonc.controller;

import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bonc.pojo.Admin;
import com.bonc.pojo.Result;
import com.bonc.service.AdminService;
import com.bonc.util.ResultUtil;

@Controller
@Slf4j
public class AdminController {
    @Autowired
    private AdminService adminService;
    @SneakyThrows
    @ResponseBody
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public Result<Admin> login(Admin admin){
        adminService.login(admin.getAdminName(),
                admin.getAdminPass());
        return  ResultUtil.success(admin);
    }
    
    @RequestMapping(value="/registry",method=RequestMethod.POST)
    @ResponseBody
    @SneakyThrows
    public Result<Admin> registry(Admin admin) {
    	Admin registry = adminService.registry(admin);
    	return  ResultUtil.success(registry);
    }
    @RequestMapping(value="/toLogin",method=RequestMethod.GET)
    public String toLogin(Admin admin) {
    	return  "login";
    }
    
}
