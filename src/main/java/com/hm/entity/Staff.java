package com.hm.entity;

import lombok.Data;
//------员工表
@Data
public class Staff {
    private Integer sfid;
    private String sfname;
    private String sfexp;
    private String sfdob;
    private Integer cosid;//服务类型
    private String sfcos;
    private Integer fid;//公司
    private Integer stid;//状态
    private String sfage;
    private String sfworkexp;
    private String sftrain;
    private String sfwant;
    private String sfgood;
    private String sfedu;
    private String sfurl;
    private String sftag;
    private Company company;
    private Tblstate tblstate;
    public Staff() {

    }
}
