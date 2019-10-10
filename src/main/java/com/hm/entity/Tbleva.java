package com.hm.entity;

import lombok.Data;

//------评价表
@Data
public class Tbleva {
    private Integer eid;
    private Integer oid;
    private String econtext;
    private String econut;
    private String etime;
    private Tblorder tblorder;
    private Integer page;
    private Integer limit;

    private String cosname;
}
