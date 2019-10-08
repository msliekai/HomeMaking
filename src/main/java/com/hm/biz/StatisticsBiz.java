package com.hm.biz;

import java.util.Map;

public interface StatisticsBiz {
    //用戶統計
    public Map getUser(String date);
    //新增公司統計
    public Map getFirm(String date);
    //订单统计
    public Map getOrder(String date,Integer fid);
    //发布订单统计
    public Map getSendOrder(String date);
}
