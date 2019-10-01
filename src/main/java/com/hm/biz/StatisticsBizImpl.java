package com.hm.biz;

import com.hm.entity.Tblmenu;
import com.hm.entity.Tblpower;
import com.hm.mapper.MenuMapper;
import com.hm.mapper.StatisticsMapper;
import org.apache.commons.lang.xwork.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class StatisticsBizImpl implements StatisticsBiz {
    @Resource
    private StatisticsMapper statisticsMapper;

    @Override
    public Map getUser(String date) {
        return statisticsMapper.getUser(date);
    }

    @Override
    public Map getFirm(String date) {
        Map<String,Map> map = new HashMap();
        map.put("1",statisticsMapper.getFirm(date));
        map.put("2",statisticsMapper.getAllFirm(date));
        return map;
    }

    @Override
    public Map getOrder(String date, Integer fid) {
        return statisticsMapper.getOrder(date,fid);
    }

    @Override
    public Map getSendOrder(String date) {
        return statisticsMapper.getSendOrder(date);
    }
}
