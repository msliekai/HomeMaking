package com.hm.entity;

import lombok.Data;

//------收藏阿姨表
@Data
public class Tblsfcoll {
    private Integer scoid;
    private Integer userid;
    private String scotime;
    private Integer sfid;
    private TblUser tblUser;
    private Staff staff;
}
