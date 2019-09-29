package com.hm.entity;

import lombok.Data;

//------公司-证书中间表
@Data
public class Tblfcc {
    private Integer fccid;
    private Integer fid;
    private Integer creid;
    private String upname;
    private String uptime;
    private String upurl;
    private Company company;
    private Credential credential;

}
