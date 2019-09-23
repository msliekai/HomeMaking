package com.hm.entity;


import lombok.Data;

//------证书表
@Data
public class Credential {
    private Integer fccid;//序号
    private Integer fid;//公司id
    private Integer creid;//公司证书id
    private Integer sfdid;//序号
    private Integer sfid;//员工id
    private Integer dataid;//员工证书id
    private String datatype;//证书名称
    private String crename;//公司证书名称
    private Integer count;//份数
    private String upname;
    private String uptime;
    private String upurl;

    public Credential() {
    }
}
