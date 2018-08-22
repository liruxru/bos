package com.bonc.mapper;

import com.bonc.pojo.entity.Admin;

public interface AdminMapper {
    Admin login(String adminName, String adminPass);

    void updateAdminSelective(Admin admin);

    void insert(Admin admin);

    Admin selectAdminByAdminName(String adminName);
}
