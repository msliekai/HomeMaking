package com.hm.web;


import com.hm.biz.MangerBiz;
import com.hm.biz.MenuBiz;
import com.hm.biz.UserBiz;
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

@Controller
@RequestMapping("/manager")
public class ManagerHandler {
    private Map<String,Object> map=new HashMap<String,Object>();
    private int count;
    @Resource
    private MangerBiz mangerBizImpl;
    @Resource
    private MenuBiz menuBizImpl;
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
