package com.hm.entity;

import lombok.Data;

//------角色表
@Data
public class Tblrole {
    private Integer rid;
    private String rname;
    private String rdescribe;
    //分页
    private Integer page;
    private Integer limit;
}
