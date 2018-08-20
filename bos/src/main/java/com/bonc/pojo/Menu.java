package com.bonc.pojo;

import lombok.Data;

/**
 * 菜单
 * @author j
 *
 */
@Data
public class Menu {
	private int id;
	private int pId;// 此处i需要大写
	private String name;
	private String page;

}
