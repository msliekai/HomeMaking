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
    private String sfage;//性别
    private String sfworkexp;//工作经历
    private String sftrain;//培训经历
    private String sfwant;
    private String sfgood;//擅长
    private String sfedu;//学历
    private String sfurl;
    private String scard;
    private Company company;//所属公司类
    private Tblstate tblstate; //状态
    private String sftag;//阿姨类型

    private Integer page;
    private Integer limit=6;

    private Integer userid;
    private TblCOS tblCOS;//服务
    private TblCOStype tblCOStype;
    private Tblsfcoll tblsfcoll;
    private String aunt;

    public Staff() {

    }

    public Staff(Integer sfid, String sfname, String sfdob, String sfcos, String sfworkexp, String sfwant, String sfgood, String sfedu, String sftag,String scard) {
        this.sfid = sfid;
        this.sfname = sfname;
        this.sfdob = sfdob;
        this.sfcos = sfcos;
        this.sfworkexp = sfworkexp;
        this.sfwant = sfwant;
        this.sfgood = sfgood;
        this.sfedu = sfedu;
        this.sftag = sftag;
        this.scard = scard;
    }

}
