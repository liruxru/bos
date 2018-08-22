package com.bonc.pojo.entity;


import lombok.Data;

@Data
public class AdminEmployee {
	private int id;
	private Employee employee;
	private String schoolName;                // 学校
	private String major; //专业
}
