package com.bonc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bonc.pojo.code.Sex;
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
	public PageBean<Employee> employeeList(
			@RequestParam(defaultValue="1")int page,
			@RequestParam(defaultValue="10")int rows,
			@RequestParam(defaultValue="1")int status){
		PageBean<Employee> employeeList = employeeService.employeeList(page,rows,status);
		List<Employee> rows2 = employeeList.getRows();
		for (Employee employee : rows2) {
			employee.setSex(new Sex(1, "男"));
		}
		return employeeList;
	}
	@RequestMapping(value="sex")
	@ResponseBody
	public List<Sex> sex(){
		List<Sex> sesx = new ArrayList<>();
		sesx.add(new Sex(1,"男人"));
		sesx.add(new Sex(1,"女人"));
		return sesx;
	}
}
