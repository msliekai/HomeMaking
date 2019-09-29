package com.hm.entity;

import lombok.Data;

//------公司和服务类别中间表
@Data
public class Tblfc {
    private Integer fcid;
    private Integer fid;
    private Integer ctid;
    private Company company;//公司
    private TblCOStype tblCOStype;//服务
    private Integer stid;
    private Tblstate tblstate;//中间表里的状态表
    private Integer limit;
    private Integer page;

}
