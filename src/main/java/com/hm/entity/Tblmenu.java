package com.hm.entity;

import lombok.Data;

import java.util.List;
//------菜单表
@Data
public class Tblmenu {
    private Integer mid;
    private String mname;
    private String murl;
    private Integer mfid;
    private List<Tblmenu> childTblmenus;

}


