package com.bonc.pojo.entity;

import java.util.Date;

import com.bonc.pojo.code.RewardsCode;

import lombok.Data;
/**
 * 奖惩信息
 * @author j
 *
 */
@Data
public class Rewards {
	private long id;
	private double money;
	private Employee employee;
	private ProjectFactory projectFactory;
	private Date createDate;
	private String reason;
	private RewardsCode rewardsCode;

}
