package com.hm.entity;

import lombok.Data;

import javax.annotation.Resource;
import java.util.List;

@Data
public class Company {
    private Integer fid;
    private String facc;//账号
    private String fpwd;//密码
    private String fname;
    private String flaw;
    private String fphone;
    private String flawphone;
    private String fsite;
    private String ftime;//注册时间
    private Integer ctid;//服务类别
    private Integer stid;//状态
    private Integer rid;//角色权限
    @Resource
    private List<CompanyService> list;//公司的服务类型

    public Company() {

    }

}
