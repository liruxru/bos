package com.bonc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bonc.pojo.entity.Menu;
import com.bonc.service.MenuService;

@RestController
public class MenuController {
	@Autowired
	private MenuService menuservice;
	@RequestMapping("menu")
	public List<Menu> menu() {
		return menuservice.selectMenu();
	}

}
