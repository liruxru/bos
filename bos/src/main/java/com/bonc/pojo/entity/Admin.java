package com.bonc.pojo.entity;

import lombok.Data;

import java.util.Date;

@Data
public class Admin {
    private Integer adminId;
    private String adminName;
    private String adminPass;
    private Date   loginDate;
    private boolean status;
    private String email;
}
