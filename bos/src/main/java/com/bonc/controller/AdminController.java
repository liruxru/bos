package com.bonc.controller;

import javax.servlet.http.HttpServletRequest;

import lombok.SneakyThrows;

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
public class AdminController {
    @Autowired
    private AdminService adminService;
    @SneakyThrows
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(Admin admin,HttpServletRequest request){
        Admin login = adminService.login(admin.getAdminName(),
                admin.getAdminPass());
        request.getSession().setAttribute("admin",login);
        return  "index";
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
    @RequestMapping(value="/loginOut",method=RequestMethod.GET)
    public String loginOut(HttpServletRequest request) {
    	request.getSession().removeAttribute("admin");
    	return  "login";
    }
    
}
