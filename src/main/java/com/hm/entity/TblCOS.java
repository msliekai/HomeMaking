package com.hm.entity;

import lombok.Data;

import java.util.List;
//------服务事项表
@Data
public class TblCOS {

    private Integer cosid;
    private String cosname;
    private String coscontext;
    private String costime;
    private Integer ctid;
    private String coshot;
    private TblCOStype tblCOStype;
    private List<TblCOStype> listcos;
    private String ctname;
    private Integer page;
    private Integer limit;



}
