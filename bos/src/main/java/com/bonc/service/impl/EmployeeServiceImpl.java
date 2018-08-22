package com.bonc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bonc.mapper.EmployeeMapper;
import com.bonc.pojo.entity.Employee;
import com.bonc.pojo.entity.YuanMei;
import com.bonc.pojo.util.PageBean;
import com.bonc.service.EmployeeService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
@Service
public class EmployeeServiceImpl implements EmployeeService {
	@Autowired
	private EmployeeMapper EmployeeMapper;
	@Override
	public PageBean<Employee> employeeList(int page, int rows, int status) {
		// TODO Auto-generated method stub
		int offset = (page-1)*rows;
		int limit = rows;
		PageHelper.offsetPage(offset, limit);
		PageBean<Employee> pageBean = new PageBean<>();
		List<Employee> list = EmployeeMapper.findAllBystatus(status);
		long total = ((Page)list).getTotal();
		pageBean.setRows(list);
		pageBean.setTotal(total);
		return pageBean;
	}

}
