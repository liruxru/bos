package com.bonc.pojo;

import java.util.Date;

import lombok.Data;
/**
 * 职工信息
 * @author j
 *
 */
@Data
public class Employee {
	private String name;
	private int age;
	private String phone;
	private String sex;
	private String email;
	private Date birth;
	private String idCard;
	private Date hiredate; // 入职日期
	private double salary; // 工资
	private ProjectFactory factory;
}
