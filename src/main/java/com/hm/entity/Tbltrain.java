package com.hm.entity;

import lombok.Data;

//------培训项目活动表
@Data
public class Tbltrain {
    private Integer trid;
    private String trtitle;
    private String trcontext;
    private String trsum;
    private String trtime;
    private String trpsum;
    private Integer itid;
    private Tbltritem tbltritem;
    //页码
    private Integer page;
    //条数
    private Integer limit;
}
