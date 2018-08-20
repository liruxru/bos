package com.bonc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bonc.mapper.MenuMapper;
import com.bonc.pojo.Menu;
import com.bonc.service.MenuService;
@Service
public class MenuServiceImpl implements MenuService {
	@Autowired
	private MenuMapper menumapper;
	@Override
	public List<Menu> selectMenu() {
		return menumapper.selectMenu();
	}

}
