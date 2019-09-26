package com.hm.entity;

import lombok.Data;

//------足迹表
@Data
public class Tblfoot {
    private Integer footid;
    private Integer userid;
    private Integer sfid;
    private String foottime;
    private Company company;
    private TblUser tblUser;
    private Staff staff;
}
