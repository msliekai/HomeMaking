package com.hm.entity;

import lombok.Data;

//------知识表
@Data
public class Tblkap {
    private Integer kid;
    private String ktitle;
    private String kcontext;
    private String khot;
    private Integer ftid;
    private String ktime;
    private String filename;
    private String filetime;
    private String fileurl;
    private Tblfiletype tblfiletype;
    private String ftname;
    private Integer page;
    private Integer limit;
}
