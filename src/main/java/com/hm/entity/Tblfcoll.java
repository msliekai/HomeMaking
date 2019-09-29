package com.hm.entity;

import lombok.Data;

//------收藏公司表
@Data
public class Tblfcoll {
    private Integer fcoid;
    private Integer fid;
    private Integer userid;
    private String fcotime;
    private Company company;
    private TblUser tblUser;

}
