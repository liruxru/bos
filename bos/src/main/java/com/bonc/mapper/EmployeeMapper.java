package com.bonc.mapper;

import java.util.List;

import com.bonc.pojo.entity.Employee;

public interface EmployeeMapper {
	public List<Employee> findAllBystatus(int status); 
}
