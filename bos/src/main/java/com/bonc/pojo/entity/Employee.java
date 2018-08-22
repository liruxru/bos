package com.bonc.pojo.entity;

import java.util.Date;

import com.bonc.pojo.code.EducationalCode;
import com.bonc.pojo.code.EmployTypeCode;
import com.bonc.pojo.code.MarriageStatuCode;
import com.bonc.pojo.code.NationalityCode;
import com.bonc.pojo.code.Sex;

import lombok.Data;
/**
 * 职工信息
 * @author j
 *
 */
@Data
public class Employee {
	private long id;
	private String name;
	private int age;
	private String phone;
	private Sex sex;
	private String email;
	private Date birth;
	private String idCard;
	private Date hiredate; // 入职日期
	private double salary; // 工资
	private EmployTypeCode employType;
	private NationalityCode nationality; // 民族
	private MarriageStatuCode marriageStatu; //婚姻
	private EducationalCode  educational; // 教育
	private ProjectFactory factory;
	private boolean status;// 在职状态  在职过一年+1
}
