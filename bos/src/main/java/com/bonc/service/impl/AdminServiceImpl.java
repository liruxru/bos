package com.bonc.service.impl;

import java.util.Date;

import lombok.SneakyThrows;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bonc.enums.ExceptionEnum;
import com.bonc.exception.AdminException;
import com.bonc.mapper.AdminMapper;
import com.bonc.pojo.Admin;
import com.bonc.service.AdminService;
import com.bonc.util.ResultUtil;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private  AdminMapper adminMapper;

    @Override
    @SneakyThrows
    public Admin registry(Admin admin) {
        Admin adminDo = this.adminMapper.selectAdminByAdminName(admin.getAdminName());
        this.adminMapper.insert(admin);
        if(adminDo !=null){
        	// 相同用户名异常
            throw new AdminException(ExceptionEnum.REGISTRY_REPEAT);
        }
        admin.setLoginDate(new Date());
        admin.setStatus(true);
        this.adminMapper.insert(admin);
        return admin;
        		
    }

    @Override
    @SneakyThrows
    public Admin login(String adminName, String adminPass) {
        Admin admin = adminMapper.login(adminName,adminPass);
        if(null == admin){
            throw new AdminException(ExceptionEnum.UNCORRECT_PASS);
        }
        // 更新最近登录时间
        admin.setLoginDate(new Date());
        adminMapper.updateAdminSelective(admin);
        return  admin;
    }

    @Override
    @SneakyThrows
    public void alertLoginPass(String adminName, String adminPass, String newPass) {
        Admin admin = adminMapper.login(adminName,adminPass);
        if(null == admin){
            throw new AdminException(ExceptionEnum.UPDATE_PASS_ERROR);
        }
        admin.setAdminPass(newPass);
        this.adminMapper.updateAdminSelective(admin);
    }
}
