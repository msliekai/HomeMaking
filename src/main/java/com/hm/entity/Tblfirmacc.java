package com.hm.entity;

import lombok.Data;

//------公司账号表
@Data
public class Tblfirmacc {
    private Integer faid;
    private Integer fid;
    private String cardtype;
    private String facard;
    private String famoney;
    private Company company;
}
