package com.hm.entity;

import lombok.Data;

//------日志表
@Data
public class Tbllog {
    private Integer lid;
    private String luser;
    private String lthing;
    private String ltime;
}
