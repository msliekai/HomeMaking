package com.hm.entity;

import lombok.Data;

//------订单表
@Data
public class Tblorder {
    private Integer oid;
    private Integer sfid;
    private Integer cosid;
    private Integer userid;
    private String otime;
    private Integer osid;
    private String sendtime;
    private String svtime;
    private Integer hzid;
    private String otitle;
    private String ocontext;
    private String odeta;
    private String ophone;
    private String onumber;
    private Integer sid;
    private Staff staff;
    private String username;
    private String cosname;
    private String ctname;
    private String hzname;
    private String fname;
    private String osname;
    private String sfname;
    private TblCOS tblCOS;
    private TblUser tblUser;
    private Tbloderstate tbloderstate;
    private TblHZ tblHZ;
    private TblSite tblSite;
    private String money;//总金额
    private Integer page;
    private Integer limit;
    private String start;
    private String end;





}
