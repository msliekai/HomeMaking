package com.hm.entity;

import lombok.Data;
//------交易记录
@Data
public class Tbldeallog {
    private Integer dlid;
    private Integer fid;
    private Integer userid;
    private Integer deid;
    private String dltime;
    private String dlcost;
    private String dltype;
    private Company company;
    private TblUser tblUser;
    private Tbldeal tbldeal;
    private Integer limit;
    private Integer page;

    public Tbldeallog() {
    }
}
