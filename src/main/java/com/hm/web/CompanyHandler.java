package com.hm.web;

import com.hm.biz.CompanyBiz;
import com.hm.biz.MenuBiz;
import com.hm.entity.*;

import com.hm.tools.TimeTools;
import com.sun.deploy.ui.FancyButton;
import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import org.aspectj.weaver.ast.Or;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import sun.awt.SunHints;
import sun.print.SunMinMaxPage;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;
@Component
@Controller
@RequestMapping("page")
public class CompanyHandler {

    //公司登录
    private ModelAndView modelAndView=new ModelAndView();
    private Map<String,Object> map = new HashMap<String,Object>();
    private Integer flag=0;
    @Resource
    private CompanyBiz companyBiz;
    @Resource
    private MenuBiz menuBizImpl;
    @RequestMapping(value = "comlogin",method = RequestMethod.POST,produces = "application/json;charset=utf-8")
    public ModelAndView comlogin(HttpServletRequest req, String facc, String fpwd){

        Company company = companyBiz.comlogin(facc, fpwd);

        if(company!=null){
            req.getSession().setAttribute("company",company);
            List<Tblmenu> menu = menuBizImpl.getMenu(company.getRid());
            for(Tblmenu menu1:menu){
                System.out.println(menu1.getMname());
            }
            req.setAttribute("umenu", menu);
            modelAndView.setViewName("baseindex");//成功后跳转的界面
        }else{
            modelAndView.setViewName("CompanyLogin");//失败返回登录页
        }
        return modelAndView;

    }
    //判断公司账号是否可用
    @RequestMapping(value = "checkfacc",method = RequestMethod.POST,produces = "application/json;charset=utf-8")
    public @ResponseBody
    String checkfacc(String facc){

        Company company = companyBiz.checkfacc(facc);
        if(company!=null){
            return "0";
        }else{
            return "1";
        }

    }

    //公司注册
    @RequestMapping("addCompany")
    public ModelAndView addCompany(Company company){

        int addCompany = companyBiz.addCompany(company);
        if(addCompany>0){

            modelAndView.setViewName("CompanyLogin");
        }else{

            modelAndView.setViewName("company/reg");
        }
        return modelAndView;
    }
    //公司证书列表
    @RequestMapping("Comcredential")
    public @ResponseBody
    Map<String,Object> Comcredential(HttpServletRequest request, HttpSession session,Credential credential)
    {
        //---获取存的公司
        Company company = (Company) session.getAttribute("company");
        Integer fid=company.getFid();
        //----把得到的公司id赋值给资料表
        credential.setFid(fid);
        //数据库查出条数
        int count=companyBiz.comCount();
        List<Credential> list=companyBiz.findCreList(credential);
        System.out.println(list);
        session.setAttribute("comcre",list);
        map.put("code",0);
        map.put("count",count);
        map.put("data",list);

        return map;
    }

    //员工证书列表
    @RequestMapping("Staffcredential")
    public @ResponseBody
    Map<String,Object> Staffcredential(HttpServletRequest request, HttpSession session,Credential credential)
    {
        //---获取存的公司
        Company company = (Company) session.getAttribute("company");
        Integer fid=company.getFid();
        //----把得到的公司id赋值给资料表
        credential.setFid(fid);
        //数据库查出条数
        Integer count1=companyBiz.stfCount();
        List<Credential> list1=companyBiz.findStfCreList(credential);
        System.out.println(list1+"22");
        map.put("code",0);
        map.put("count",count1);
        map.put("data",list1);

        return map;
    }

    //公司订单查询
    @RequestMapping("companyOrder")
    public @ResponseBody
    Map<String,Object> companyOrder(HttpServletRequest request, HttpSession session,Order order)
    {
        //---获得登录的公司对象
        Company company = (Company) session.getAttribute("company");
        Integer count=companyBiz.ordercount(company.getFid(),order.getOsname());
        List<Tblorder> list=companyBiz.findCompanyOrder(company.getFid(),order.getPage(),order.getLimit(),order.getOsname());
        request.getSession().setAttribute("aa",list);
        map.put("code",0);
        map.put("count",count);
        map.put("data",list);
        return map;
    }

    //----员工信息表
    //---员工配置表
    //----人员评价表
    @RequestMapping("staffList")
    public @ResponseBody
    Map<String,Object> staffList(HttpServletRequest request, HttpSession session,Tblorder tblorder)
    {
        //---获得登录的公司对象
        Company company = (Company) session.getAttribute("company");
        Integer count=companyBiz.staffCount(company.getFid());
        List<Staff> list = companyBiz.staffList(company.getFid(),tblorder.getPage(),tblorder.getLimit());
        map.put("code",0);
        map.put("count",count);
        map.put("data",list);
        return map;
    }
    //-------培训表
    @RequestMapping("stafftrain")
    public @ResponseBody
    Map<String,Object> stafftrain(HttpServletRequest request, HttpSession session,Tbltrain tbltrain)
    {
        Integer count=companyBiz.traincount();
        List<Tbltritem> list = companyBiz.train(tbltrain.getPage(),tbltrain.getLimit());
        map.put("code",0);
        map.put("count",count);
        map.put("data",list);
        return map;
    }

//    员工删除
@RequestMapping(value = "useDel", method = RequestMethod.POST, produces = "application/text;charset=utf-8")
public @ResponseBody String useDel(String sfid){
    flag=0;
    Integer id=Integer.parseInt(sfid);
    flag=companyBiz.delStaff(id);
    return String.valueOf(flag);
}
    //公司交易
    @RequestMapping(value = "querydeallog",method = RequestMethod.GET,produces = "application/json;charset=utf-8")
    public @ResponseBody Map<String,Object>  querydeallog(HttpServletRequest request,HttpSession httpSession ,Tbldeallog tbldeallog){
        Company company = (Company) httpSession.getAttribute("company");
        Integer fid = company.getFid();
        int page = tbldeallog.getPage();
        List<Tbldeallog> querydeallog = companyBiz.querydeallog(fid,page,tbldeallog.getLimit());
        int count = companyBiz.countdeallog(fid, page, tbldeallog.getLimit());
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("code",0);
        map.put("count",count);
        map.put("data",querydeallog);
        return map;
    }
    //提供给公司的所有服务
    @RequestMapping(value = "querycostype",method = RequestMethod.POST,produces = "application/json;charset=utf-8")
    public @ResponseBody List querycostype(HttpServletRequest request){

        List<TblCOStype> querycostype = companyBiz.querycostype();
        request.setAttribute("costype",querycostype);
        System.out.println(querycostype+"*********");
        return querycostype;

    }
    //显示银行账户 余额 类型
    @RequestMapping(value = "queryfirmacc",method = RequestMethod.POST,produces ="application/json;charset=utf-8" )
    public @ResponseBody Tblfirmacc queryfirmacc(HttpServletRequest request,HttpSession httpSession){
        System.out.println("公司银行账户");
        Company company = (Company) httpSession.getAttribute("company");
        System.out.println(company+"+++++++++++++");
        Integer fid = company.getFid();
        System.out.println(fid);
        Tblfirmacc queryfirmacc = companyBiz.queryfirmacc(fid);
        request.getSession().setAttribute("firmacc",queryfirmacc);
        System.out.println(queryfirmacc+"****"+queryfirmacc.getCardtype());
        return queryfirmacc;
    }
    //充值
    @RequestMapping(value = "addmoney",method = RequestMethod.POST,produces ="application/json;charset=utf-8" )
    public @ResponseBody String addmoney(HttpSession httpSession,String addmoney,String compwd){
        System.out.println("充值");
        System.out.println("检测银行卡密码是否正确");
        Tblfirmacc firmacc = (Tblfirmacc) httpSession.getAttribute("firmacc");
        Tblfirmacc checkcompwd = companyBiz.checkcompwd(firmacc.getFacard(), compwd);
        if(checkcompwd!=null){
            String famoney = firmacc.getFamoney();
            int i = Integer.parseInt(famoney);//余额
            int j = Integer.parseInt(addmoney);//充值
            int sum=i+j;
            String money=sum+"";
            Company company = (Company) httpSession.getAttribute("company");
            Integer fid = company.getFid();
            Integer row = companyBiz.addmoney(money,fid);
            return "1";
        }else{
            return "0";
        }
    }
    //提现
    @RequestMapping(value = "drawmoney",method = RequestMethod.POST,produces ="application/json;charset=utf-8" )
    public @ResponseBody String drawmoney(HttpSession httpSession,String draw,String compwd){
        Company company = (Company) httpSession.getAttribute("company");
        Integer fid = company.getFid();
        Tblfirmacc firmacc = (Tblfirmacc) httpSession.getAttribute("firmacc");
        Tblfirmacc checkcompwd = companyBiz.checkcompwd(firmacc.getFacard(), compwd);
        if(checkcompwd!=null){
            String famoney = firmacc.getFamoney();
            int i = Integer.parseInt(draw);//提现
            int j = Integer.parseInt(famoney);//余额
            if(i<=j){
                int sum=j-i;
                String money=sum+"";
                System.out.println(money);
                Integer row = companyBiz.drawmoney(money, fid);
                System.out.println(row);
                return "1";

            }else{
                return "0";//格式不正确
            }

        }else{
            return "2";//密码错误
        }
    }
    //银行卡修改
    @RequestMapping(value = "changefacard",method = RequestMethod.POST,produces = "application/json;charset=utf-8")
    public @ResponseBody String changefacard(HttpSession httpSession,String car){

        System.out.println("修改银行卡号");
        Company company = (Company) httpSession.getAttribute("company");
        Integer fid = company.getFid();
        Integer row = companyBiz.changefacard(car, fid);
        return "1";

    }
    //公司服务类别
    @RequestMapping(value = "servicetype",method = RequestMethod.GET,produces = "application/json;charset=utf-8")
    public @ResponseBody Map<String,Object> servicetype(HttpSession httpSession,Tblfc tblfc){
        Integer page = tblfc.getPage();
        Integer limit = tblfc.getLimit();
        Company company = (Company) httpSession.getAttribute("company");
        Integer fid = company.getFid();//获取公司fid
        List<TblCOStype> servicetype = companyBiz.servicetype(fid,page,limit);
        int count =companyBiz.countservicetype(fid,page,limit);
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("code",0);
        map.put("count",count);
        map.put("data",servicetype);
        return map;
    }

    /*//具体服务
    @RequestMapping(value = "service",method = RequestMethod.GET,produces = "application/json;charset=utf-8")
    public @ResponseBody Map<String,Object> service(HttpSession httpSession,Tblfc tblfc){
        System.out.println("具体服务");
        Map<String,Object> map=new HashMap<String,Object>();
        return map;
    }*/

    //检测银行密码是否正确
    @RequestMapping(value = "checkcompwd",method = RequestMethod.POST,produces ="application/json;charset=utf-8")
    public @ResponseBody String checkcompwd(HttpSession httpSession,String compwd){
        Tblfirmacc firmacc = (Tblfirmacc) httpSession.getAttribute("firmacc");
        Tblfirmacc checkcompwd = companyBiz.checkcompwd(firmacc.getFacard(),compwd);
        if(checkcompwd!=null){
            return "1";
        }
        return "0";
    }
    //修改公司信息
    @RequestMapping(value = "upcom",method = RequestMethod.POST,produces ="application/json;charset=utf-8" )
    public @ResponseBody String upcom(HttpSession httpSession,String facc,
                                      String fname,String flaw,String flawphone,String fsite){
        Company company = (Company) httpSession.getAttribute("company");
        int upcom = companyBiz.upcom(company.getFid(),facc,fname,flaw,flawphone,fsite);
        return "1";
    }

//    抢单
    @RequestMapping(value = "takeOrders",method = RequestMethod.GET,produces ="application/json;charset=utf-8" )
    public @ResponseBody Map<String,Object> takeOrders(HttpSession httpSession,Tblorder tblorder)
    {
        Integer page = tblorder.getPage();
        Integer limit = tblorder.getLimit();
        Integer osid=6;
        List<Tblorder> list = companyBiz.takeOrders(osid,page,limit);
        Integer count=list.size();
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("code",0);
        map.put("count",count);
        map.put("data",list);
        return map;
    }
    //-----查找用户信息
    @RequestMapping(value = "finduser",method = RequestMethod.GET,produces ="application/json;charset=utf-8" )
    public @ResponseBody TblUser finduser(HttpSession httpSession,TblUser tblUser)
    {
        Integer userid = tblUser.getUserid();
        TblUser user = companyBiz.findUser(userid);
        System.out.println(user);
        return user;
    }
    //--------查找员工信息
    @RequestMapping(value = "findStaff",method = RequestMethod.GET,produces ="application/json;charset=utf-8" )
    public @ResponseBody List<Staff> findStaff(HttpSession session)
    {
        Company company = (Company) session.getAttribute("company");
        Integer fid = company.getFid();//获取公司fid
        List<Staff> list=companyBiz.findStaff(fid);
        System.out.println(list);
        return list;
    }
    //--------------接单
    @RequestMapping(value = "take",method = RequestMethod.GET,produces ="application/text;charset=utf-8" )
    public @ResponseBody String take(Tblorder tblorder)
    {

        //---获取订单号
        Integer oid= tblorder.getOid();
        //--员工id
        Integer sfid=tblorder.getSfid();
        //--服务时间
        String svtime=tblorder.getSvtime();
        //--订单时间
        String otime= TimeTools.getStringDateMin();
        //--更改状态
        Integer osid=7;
        tblorder.setOid(oid);
        tblorder.setOsid(osid);
        tblorder.setSfid(sfid);
        tblorder.setSvtime(svtime);
        tblorder.setOtime(otime);

        Integer a = companyBiz.addOrder(tblorder);
        if(a>0)
        {
            return "ok";
        }else {
            return "no";
        }
    }

    @RequestMapping(value = "staffFix",method = RequestMethod.GET,produces ="application/text;charset=utf-8")
    public @ResponseBody String staffFix(Staff staff)
    {
        Staff staff1 = new Staff(staff.getSfid(),staff.getSfname(),staff.getSfdob(),
                staff.getSfcos(),staff.getSfworkexp(),staff.getSfwant(),
                staff.getSfgood(),staff.getSfedu(),staff.getSftag());

        Integer b = companyBiz.staffFix(staff1);
        if(b>0)
        {
            return "ok";
        }else {
            return "no";
        }
    }
}
