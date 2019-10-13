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
import java.util.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.LinkedList;

@Controller
@RequestMapping("/manager")
public class ManagerHandler {
    private Map<String,Object> map=new HashMap<String,Object>();
    private int count;
    private String result;
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

    //获取所有公司
    @RequestMapping(value ="/getCompany.action")
    public  @ResponseBody
    List<Company> getCompany(HttpServletRequest req, Company company){
        return mangerBizImpl.cFindCompanyAll(null);
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
    //家政司公审核列表
    @RequestMapping(value ="/cmFindCompanyAll.action")
    public  @ResponseBody
    Map cmFindCompanyAll(HttpServletRequest req, Company company){
        count=mangerBizImpl.cmFindCompanyAll(null).size();
        List<Company>list =mangerBizImpl.cmFindCompanyAll(company);
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
        List<TblCOS> list =mangerBizImpl.cFindServiceAll(tblCOS);
        for (TblCOS cos : list) {
            System.out.println(cos.getCoshot());
        }

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
    //用户列表禁用
    @RequestMapping(value ="/updateUserState.action")
    public  @ResponseBody String updateUserState(int userid){
        int num=mangerBizImpl.updateUserState(userid);
        if(num>0){
            result="1";
        }else{
            result="0";
        }
        return result;
    }
    //用户列表启用
    @RequestMapping(value ="/updateUserState2.action")
    public  @ResponseBody String updateUserState2(int userid){
        int num=mangerBizImpl.updateUserState2(userid);
        if(num>0){
            result="1";
        }else{
            result="0";
        }
        return result;
    }
    //家政公司列表禁用
    @RequestMapping(value ="/updateCompanyState.action")
    public  @ResponseBody String updateCompanyState(int fid){
        int num=mangerBizImpl.updateCompanyState(fid);
        if(num>0){
            result="1";
        }else{
            result="0";
        }
        return result;
    }
    //家政公司列表启用
    @RequestMapping(value ="/updateCompanyState2.action")
    public  @ResponseBody String updateCompanyState2(int fid){
        int num=mangerBizImpl.updateCompanyState2(fid);
        if(num>0){
            result="1";
        }else{
            result="0";
        }
        return result;
    }
    //入驻审核不通过
    @RequestMapping(value ="/updateCompanyRole.action")
    public  @ResponseBody String updateCompanyRole(int fid){
        int num=mangerBizImpl.updateCompanyRole(fid);
        if(num>0){
            result="1";
        }else{
            result="0";
        }
        return result;
    }
    //入驻审核通过
    @RequestMapping(value ="/updateCompanyRole2.action")
    public  @ResponseBody String updateCompanyRole2(int fid){
        int num=mangerBizImpl.updateCompanyRole2(fid);
        if(num>0){
            result="1";
        }else{
            result="0";
        }
        return result;
    }
    //添加培训安排
    @RequestMapping("/addtrain.action")
    public @ResponseBody int addtrain(Tbltrain tbltrain){

        return mangerBizImpl.addTrain(tbltrain);
    }
    //删除培训安排
    @RequestMapping(value ="/delTrain.action")
    public  @ResponseBody String delTrain(int trid){
        int num=mangerBizImpl.delTrain(trid);
        if(num>0){
            result="1";
        }else{
            result="0";
        }
        return result;
    }
    //修改培训安排
    @RequestMapping("/updateTrain.action")
    public @ResponseBody int updateTrain(Tbltrain tbltrain){

        return mangerBizImpl.updateTrain(tbltrain);
    }
    //添加服务类型
    @RequestMapping("/addServiceType.action")
    public @ResponseBody int addServiceType(TblCOStype tblCOStype){

        return mangerBizImpl.addServiceType(tblCOStype);
    }
    //删除服务类型
    @RequestMapping(value ="/delServiceType.action")
    public  @ResponseBody String delServiceType(int ctid){
        int num=mangerBizImpl.delServiceType(ctid);
        if(num>0){
            result="1";
        }else{
            result="0";
        }
        return result;
    }
    //修改服务类别
    @RequestMapping("/updateServiceType.action")
    public @ResponseBody int updateServiceType(TblCOStype tblCOStype){

        return mangerBizImpl.updateServiceType(tblCOStype);
    }
    //添加服务
    @RequestMapping("/addService.action")
    public @ResponseBody int addService(TblCOS tblCOS){

        return mangerBizImpl.addService(tblCOS);
    }
    //删除服务类型
    @RequestMapping(value ="/delService.action")
    public  @ResponseBody String delService(int cosid){
        int num=mangerBizImpl.delService(cosid);
        if(num>0){
            result="1";
        }else{
            result="0";
        }
        return result;
    }
    //修改服务
    @RequestMapping("/updateService.action")
    public @ResponseBody int updateService(TblCOS tblCOS){

        return mangerBizImpl.updateService(tblCOS);
    }
    //添加公告
    @RequestMapping("/AddDynamic.action")
    public @ResponseBody int AddDynamic(Tblnotice tblnotice){

        return mangerBizImpl.AddDynamic(tblnotice);
    }
    //删除公告
    @RequestMapping(value ="/delDynamic.action")
    public  @ResponseBody String delDynamic(int nid){
        int num=mangerBizImpl.delDynamic(nid);
        if(num>0){
            result="1";
        }else{
            result="0";
        }
        return result;
    }
    //修改公告
    @RequestMapping("/updateDynamic.action")
    public @ResponseBody int updateDynamic(Tblnotice tblnotice){

        return mangerBizImpl.updateDynamic(tblnotice);
    }
    //添加技能培训
    @RequestMapping("/AddTritem.action")
    public @ResponseBody int AddTritem(Tbltritem tbltritem){

        return mangerBizImpl.AddTritem(tbltritem);
    }
    //删除技能培训
    @RequestMapping(value ="/delTritem.action")
    public  @ResponseBody String delTritem(int itid){
        int num=mangerBizImpl.delTritem(itid);
        if(num>0){
            result="1";
        }else{
            result="0";
        }
        return result;
    }
    //修改公告
    @RequestMapping("/updateTritem.action")
    public @ResponseBody int updateTritem(Tbltritem tbltritem){

        return mangerBizImpl.updateTritem(tbltritem);
    }
    //添加育婴知识
    @RequestMapping("/AddDKap.action")
    public @ResponseBody int AddDKap(Tblkap tblkap){

        return mangerBizImpl.AddDKap(tblkap);
    }
    //删除育婴知识
    @RequestMapping(value ="/delKap.action")
    public  @ResponseBody String delKap(int kid){
        int num=mangerBizImpl.delKap(kid);
        if(num>0){
            result="1";
        }else{
            result="0";
        }
        return result;
    }
    //修改育婴知识
    @RequestMapping("/updateKap.action")
    public @ResponseBody int updateKap(Tblkap tblkap){

        return mangerBizImpl.updateKap(tblkap);
    }
    //提交订单回访
    @RequestMapping("/OrderVisit.action")
    public @ResponseBody int OrderVisit(Tblorder tblorder){

        return mangerBizImpl.OrderVisit(tblorder);
    }
}
