package com.hm.entity;

import lombok.Data;

@Data
public class StaffCre {
    private Integer fccid;//序号
    private Integer fid;//公司id
    private Integer sfid;//员工id
    private Integer dataid;//员工证书id
    private String datatype;//证书名称
    private Integer count;//份数
    private String upname;
    private String uptime;
    private String upurl;
    private Integer page;
    private Integer limit;
}
