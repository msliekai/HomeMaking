package com.hm.entity;

import lombok.Data;

//------员工-资料中间表
@Data
public class Tblsfdata {
    private Integer sfdid;
    private Integer sfid;
    private Integer dataid;
    private String upname;
    private String uptime;
    private String upurl;
    private Integer fid;
    private Tbldata tbldata;
    private Staff staff;
    private Company company;

}
