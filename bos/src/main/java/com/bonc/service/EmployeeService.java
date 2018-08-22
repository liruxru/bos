package com.bonc.service;

import com.bonc.pojo.entity.Employee;
import com.bonc.pojo.util.PageBean;

public interface EmployeeService {

	PageBean<Employee> employeeList(int page, int rows, int status);

}
