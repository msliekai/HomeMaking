package com.hm.entity;

import lombok.Data;

import java.util.List;

//------服务类型表
@Data
public class TblCOStype {

    private Integer ctid;
    private String ctname;
    private String ctcontext;
    private String cttime;

    private List<TblCOS> tblCOS;


}
