package com.bonc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bonc.pojo.entity.Employee;
import com.bonc.pojo.util.PageBean;
import com.bonc.service.EmployeeService;

@Controller
@RequestMapping("employee")
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService;
	@RequestMapping("toEmployee")
	public String toYuanMei(){
		return "employee";
	}
	
	@RequestMapping(value="list")
	@ResponseBody
	public PageBean<Employee> yuanMeiList(
			@RequestParam(defaultValue="1")int page,
			@RequestParam(defaultValue="10")int rows,
			@RequestParam(defaultValue="1")int status){
		PageBean<Employee> employeeList = employeeService.employeeList(page,rows,status);
		return employeeList;
	}
}
