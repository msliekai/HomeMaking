package com.hm.entity;

import lombok.Data;

//------权限表
@Data
public class Tblpower {
    private Integer pid;
    private Integer rid;
    private Integer mid;
    private Tblrole tblrole;
    private Tblmenu tblmenu;
}
