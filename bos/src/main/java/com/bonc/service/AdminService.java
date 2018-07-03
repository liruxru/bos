package com.bonc.service;

import com.bonc.pojo.Admin;
public interface AdminService {
    /**
     * 用户注册
     * @param admin
     * @throws Exception
     */
    Admin registry(Admin admin) throws Exception;


    /**
     * 登录
     * @param adminName 登录名
     * @param adminPass 登录密码
     * @return
     * @throws Exception
     */
    Admin login (String adminName, String adminPass) throws Exception;

    /**
     * 修改登录密码
     * @param adminName 登录名
     * @param adminPass 旧密码
     * @param newPass   新密码
     * @throws Exception
     */
    void alertLoginPass(String adminName, String adminPass,String newPass) throws Exception;

}
