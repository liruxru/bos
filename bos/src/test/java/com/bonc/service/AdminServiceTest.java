package com.bonc.service;

import com.bonc.pojo.Admin;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class AdminServiceTest {
    @Autowired
    private AdminService adminService;
    @Test
    public void registy() throws Exception{
        Admin admin =new Admin();
        admin.setAdminPass("aaa");
        admin.setAdminName("bbb");
        adminService.registry(admin);
    }
}
