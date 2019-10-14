package com.hm.mapper;

import com.hm.entity.AllCompany;
import com.hm.entity.Tblmenu;
import com.hm.entity.Tblpower;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface StatisticsMapper {
    //用戶統計
    public Map getUser(@Param("date") String date);

    //新增公司統計
    public Map getFirm(@Param("date") String date);

    //公司統計
    public Map getAllFirm(@Param("date") String date);

    //订单统计
    public Map getOrder(@Param("date") String date,@Param("fid") Integer fid);

    //发布订单统计
    public Map getSendOrder(@Param("date") String date);

    //所有公司量統計
    public List<AllCompany> getAllCompany();
}
