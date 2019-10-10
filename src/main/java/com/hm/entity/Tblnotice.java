package com.hm.entity;

import lombok.Data;

//------公告表
@Data
public class Tblnotice {
    private Integer nid;
    private String ntime;
    private String ntitle;
    private Integer page;
    private Integer limit;
    private String start;
    private String end;
}
