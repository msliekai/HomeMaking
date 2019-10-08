package com.hm.web;


import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.hm.biz.MangerBiz;
import com.hm.biz.MenuBiz;
import com.hm.biz.UserBiz;
import com.hm.entity.*;
import com.hm.biz.StatisticsBizImpl;
import com.hm.entity.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/manager")
public class ManagerHandler {
    private Map<String,Object> map=new HashMap<String,Object>();
    private int count;
    @Resource
    private MangerBiz mangerBizImpl;
    @Resource
    private MenuBiz menuBizImpl;
    @Resource
    private StatisticsBizImpl statisticsBizImpl;
    private ModelAndView mav=null;
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
    //后台用户信息列表
    @RequestMapping(value ="/Muserlist.action")
    public  @ResponseBody
    Map userlist(HttpServletRequest req, TblUser tblUser){
        count=mangerBizImpl.cFindUserAll(null).size();
        List<TblUser>list =mangerBizImpl.cFindUserAll(tblUser);
        map.put("code",0);
        map.put("count",count);
        map.put("data",list);
        return map;
    }
    //家政公司列表
    @RequestMapping(value ="/Mcompanylist.action")
    public  @ResponseBody
    Map companylist(HttpServletRequest req, Company company){
        count=mangerBizImpl.cFindCompanyAll(null).size();
        List<Company>list =mangerBizImpl.cFindCompanyAll(company);
        map.put("code",0);
        map.put("count",count);
        map.put("data",list);
        return map;
    }
    //培训计划列表
    @RequestMapping(value ="/Mtrainlist.action")
    public  @ResponseBody
    Map trainlist(HttpServletRequest req, Tbltrain tbltrain){
        count=mangerBizImpl.cFindtrainAll(null).size();
        List<Tbltrain>list =mangerBizImpl.cFindtrainAll(tbltrain);
        map.put("code",0);
        map.put("count",count);
        map.put("data",list);
        return map;
    }
    //服务类型列表
    @RequestMapping(value ="/MServiceTypeList.action")
    public  @ResponseBody
    Map servicelist(HttpServletRequest req, TblCOStype tblCOStype){
        count=mangerBizImpl.cFindServiceTypeAll(null).size();
        List<TblCOStype>list =mangerBizImpl.cFindServiceTypeAll(tblCOStype);
        map.put("code",0);
        map.put("count",count);
        map.put("data",list);
        return map;
    }
    //服务列表
    @RequestMapping(value ="/Mservicelist.action")
    public  @ResponseBody
    Map servicelist(HttpServletRequest req, TblCOS tblCOS){
        count=mangerBizImpl.cFindServiceAll(null).size();
        List<TblCOS>list =mangerBizImpl.cFindServiceAll(tblCOS);
        map.put("code",0);
        map.put("count",count);
        map.put("data",list);
        return map;
    }
    //热门服务列表
    @RequestMapping(value ="/MHotservicelist.action")
    public  @ResponseBody
    Map hotservicelist(HttpServletRequest req, TblCOS tblCOS){
        count=mangerBizImpl.cFindServiceAll(null).size();
        List<TblCOS>list =mangerBizImpl.cFindServiceAll(tblCOS);
        map.put("code",0);
        map.put("count",count);
        map.put("data",list);
        return map;
    }
    //服务信息列表
    @RequestMapping(value ="/MserviceIfmationlist.action")
    public  @ResponseBody
    Map serviceIfmationlist(HttpServletRequest req, Tblorder tblorder){
        count=mangerBizImpl.MserviceIfmationlist(null).size();
        List<Tblorder>list =mangerBizImpl.MserviceIfmationlist(tblorder);
        map.put("code",0);
        map.put("count",count);
        map.put("data",list);
        return map;
    }
    //动态列表
    @RequestMapping(value ="/Mdynamiclist.action")
    public  @ResponseBody
    Map dynamiclist(HttpServletRequest req, Tblnotice tblnotice){
        count=mangerBizImpl.cFindDynamiclistAll(null).size();
        List<Tblnotice>list =mangerBizImpl.cFindDynamiclistAll(tblnotice);
        map.put("code",0);
        map.put("count",count);
        map.put("data",list);
        return map;
    }
    //技能培训列表
    @RequestMapping(value ="/Mtritemlist.action")
    public  @ResponseBody
    Map Mtritemlist(HttpServletRequest req, Tbltritem tbltritem){
        count=mangerBizImpl.cFindtritemlistAll(null).size();
        List<Tbltritem>list =mangerBizImpl.cFindtritemlistAll(tbltritem);
        map.put("code",0);
        map.put("count",count);
        map.put("data",list);
        return map;
    }
    //育婴知识列表
    @RequestMapping(value ="/MKapContextlist.action")
    public  @ResponseBody
    Map MKapContextlist(HttpServletRequest req, Tblkap tblkap){
        count=mangerBizImpl.cFindkaptAll(null).size();
        List<Tblkap>list =mangerBizImpl.cFindkaptAll(tblkap);
        map.put("code",0);
        map.put("count",count);
        map.put("data",list);
        return map;
    }
    //订单列表
    @RequestMapping(value ="/OrderList.action")
    public  @ResponseBody
    Map OrderList(HttpServletRequest req, Tblorder tblorder){
        count=mangerBizImpl.cFindOrderAll(null).size();
        List<Tblorder>list =mangerBizImpl.cFindOrderAll(tblorder);
        map.put("code",0);
        map.put("count",count);
        map.put("data",list);
        return map;
    }
    //顾问信息
    @RequestMapping(value ="/AdvisorList.action")
    public  @ResponseBody
    Map AdvisorList(HttpServletRequest req, TblAdvisor tblAdvisor){
        count=mangerBizImpl.cFindAdvisorAll(null).size();
        List<TblAdvisor>list =mangerBizImpl.cFindAdvisorAll(tblAdvisor);
        map.put("code",0);
        map.put("count",count);
        map.put("data",list);
        return map;
    }
}
