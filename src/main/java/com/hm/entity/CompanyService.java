package com.hm.entity;

import lombok.Data;

@Data
public class CompanyService {
    private Integer ctid;//服务id
    private String ctname;//服务名称 分类
    private String ctcontext;//服务描述 具体做什么事
    private String cttime;//更新时间

    public CompanyService() {
    }

}
