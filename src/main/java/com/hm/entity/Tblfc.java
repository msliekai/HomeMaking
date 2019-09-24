package com.hm.entity;

import lombok.Data;

//------公司和服务类别中间表
@Data
public class Tblfc {
    private Integer fcid;
    private Integer fid;
    private Integer ctid;
    private Company company;
    private TblCOStype tblCOStype;

}
