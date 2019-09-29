package com.hm.web;


import com.hm.biz.MangerBiz;
import com.hm.biz.MenuBiz;
import com.hm.biz.StatisticsBizImpl;
import com.hm.entity.*;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.type.TypeReference;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/manager")
public class ManagerHandler {
    @Resource
    private MangerBiz mangerBizImpl;
    @Resource
    private MenuBiz menuBizImpl;
    @Resource
    private StatisticsBizImpl statisticsBizImpl;
    private ModelAndView mav=null;
    private Map<String,Object> map = new HashMap<String,Object>();
    @RequestMapping(value = "/adminLogin.action")
    public ModelAndView userlogin(HttpServletRequest request, TblUser user)
    {
        System.out.println("+++++");
        TblUser u = mangerBizImpl.cUserLogin(user);
        if(null!=u)
        {
            request.getSession().setAttribute("user",u);
            System.out.println(u.getRid());
            request.setAttribute("umenu",menuBizImpl.getMenu(u.getRid()));
            mav = new ModelAndView();
            mav.setViewName("baseindex");
        }else {
            return null;
        }
        return mav;
    }

    @RequestMapping(value = "/getRole.action")
    public @ResponseBody Map<String,Object> getRole( Tblrole tblrole){
        int limit = tblrole.getLimit();
        Tblrole t = new Tblrole();
        t.setRname(tblrole.getRname());
        int count = mangerBizImpl.getRole(t).size();
        System.out.println("+++"+mangerBizImpl.getRole(t).size());
        System.out.println(mangerBizImpl.getRole(null).size());
        int page = count%limit==0?count/limit:(count/limit+1);
        if (page<tblrole.getPage()){
            tblrole.setPage(page);
        }
        map.put("code",0);
        map.put("count",count);
        map.put("data",mangerBizImpl.getRole(tblrole));
        return map;
    }
    @RequestMapping(value = "/addRole.action")
    public @ResponseBody int addRole( Tblrole tblrole){
        return mangerBizImpl.addRole(tblrole);
    }
    @RequestMapping(value = "/upRole.action")
    public @ResponseBody int upRole( Tblrole tblrole){
        return mangerBizImpl.upRole(tblrole);
    }
    @RequestMapping(value = "/delRole.action")
    public @ResponseBody int delRole( Tblrole tblrole){
        return mangerBizImpl.delRole(tblrole);
    }

    @RequestMapping(value = "/getPower.action")
    public @ResponseBody  Object getPower( Integer rid){
        return menuBizImpl.getPower(rid);
    }

    @RequestMapping(value = "/getNewPower.action")
    public @ResponseBody  boolean getNewPower( Integer rid, String data){
        System.out.println(rid);
        System.out.println(data);
        ObjectMapper mapper = new ObjectMapper();
        //data为字符串json数据
        List<MenuTree> list = null;
        try {
            list = mapper.readValue(data, new TypeReference<List<MenuTree>>() {});
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println(list);
        List<Tblpower> listMid = new ArrayList<>();
        getMid(list,listMid,rid);
        System.out.println(listMid);
        return menuBizImpl.changePower(listMid,rid);
    }
    //通过递归获取mid
    private List<Tblpower> getMid(List<MenuTree> children,List<Tblpower> listMid,Integer rid){
        for (MenuTree menuTree : children) {
            Tblpower tblpower = new Tblpower();
            tblpower.setMid(menuTree.getId());
            tblpower.setRid(rid);
            listMid.add(tblpower);
            if (menuTree.getChildren().size()>0){
                getMid(menuTree.getChildren(),listMid,rid);
            }
        }
        return listMid;
    }

    //獲取用戶統計
    @RequestMapping(value = "/getUserCount.action")
    public @ResponseBody  Map getUserCount( String date){
        System.out.println(date);
        return statisticsBizImpl.getUser(date);
    }
    //獲取公司統計
    @RequestMapping(value = "/getFirmCount.action")
    public @ResponseBody  Map getFirmCount( String date){
        return statisticsBizImpl.getFirm(date);
    }
    //獲取订单統計
    @RequestMapping(value = "/getOrderCount.action")
    public @ResponseBody  Map getOrderCount( String date,Integer fid){
        return statisticsBizImpl.getOrder(date, fid);
    }
    //獲取发布订单統計
    @RequestMapping(value = "/getSendOrderCount.action")
    public @ResponseBody  Map getSendOrderCount( String date){
        return statisticsBizImpl.getSendOrder(date);
    }
}
