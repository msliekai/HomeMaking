package com.hm.web;

import com.hm.aop.TransLog;
import com.hm.biz.CompanyBiz;
import com.hm.biz.MenuBiz;
import com.hm.entity.*;

import com.sun.deploy.ui.FancyButton;
import com.sun.org.apache.regexp.internal.RE;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import sun.awt.SunHints;
import sun.print.SunMinMaxPage;

import javax.annotation.Resource;
import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpServletRequest;
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
        System.out.println(list);
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
        Company company = (Company) httpSession.getAttribute("company");
        Integer fid = company.getFid();
        System.out.println(fid);
        Tblfirmacc queryfirmacc = companyBiz.queryfirmacc(fid);
        request.getSession().setAttribute("firmacc",queryfirmacc);
        return queryfirmacc;
    }
    //充值
    @TransLog(operationName = "充值",operationType = "银行卡")
    @RequestMapping(value = "addmoney",method = RequestMethod.POST,produces ="application/json;charset=utf-8" )
    public @ResponseBody String addmoney(HttpSession httpSession,String addmoney,String compwd){
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
        List<Tblfc> servicetype = companyBiz.servicetype(fid,page,limit);
        int count =companyBiz.countservicetype(fid,page,limit);
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("code",0);
        map.put("count",count);
        map.put("data",servicetype);
        return map;
    }

    //具体服务
    @RequestMapping(value = "queryserve",method = RequestMethod.GET,produces = "application/json;charset=utf-8")
    public @ResponseBody Map<String,Object> queryserve(HttpSession httpSession,Tblfc tblfc){
        System.out.println("具体服务");
        Integer page = tblfc.getPage();
        Integer limit = tblfc.getLimit();
        Company company = (Company) httpSession.getAttribute("company");
        Integer fid = company.getFid();//获取公司fid
        System.out.println(fid);
        System.out.println(page);
        System.out.println(limit);
        List<Tblfc> queryserve = companyBiz.queryserve(fid, page, limit);
        System.out.println(queryserve+"********");
        int count = companyBiz.countserve(fid,page,limit);
        System.out.println(count+"+++++++++++");
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("code",0);
        map.put("count",count);
        map.put("data",queryserve);
        return map;
    }

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
    public @ResponseBody String upcom(HttpSession httpSession,HttpServletRequest req,String facc,
                                      String fname, String flaw, String flawphone, String fsite){
        Company company = (Company) httpSession.getAttribute("company");
        int upcom = companyBiz.upcom(company.getFid(),facc,fname,flaw,flawphone,fsite);
        Company upcominfo = companyBiz.upcominfo(company.getFid());
        httpSession.setAttribute("company",upcominfo);
//        req.getSession().setAttribute("company",company);
        return "1";
    }

    //评价
    @RequestMapping(value = "querycomment",method = RequestMethod.GET,produces ="application/json;charset=utf-8")
    public @ResponseBody Map<String,Object> querycomment(HttpSession httpSession,Tbleva tbleva){
        System.out.println("评价");
        Company company = (Company) httpSession.getAttribute("company");
        Integer fid = company.getFid();
        Integer page = tbleva.getPage();
        Integer limit = tbleva.getLimit();
        List<Tbleva> querycomment = companyBiz.querycomment(fid,page,limit);
        Map<String,Object> map=new HashMap<String,Object>();
//        int count=0;
        int count = companyBiz.countcomment(fid,page,limit);
        map.put("code",0);
        map.put("count",count);
        map.put("data",querycomment);
        return map;
    }
    //银行转账
    @RequestMapping(value = "transfer",method = RequestMethod.POST,produces ="application/json;charset=utf-8")
    public @ResponseBody String transfer(HttpSession httpSession,String collectcount,
                                         String collect,String payee,String paymentpwd,String transfermoney){
        Staff staff = companyBiz.queryscard(collectcount);
        String sfname = staff.getSfname();
        Company company = (Company) httpSession.getAttribute("company");
        Integer fid = company.getFid();
        System.out.println(fid+"//////");
        Tblfirmacc queryfacard = companyBiz.queryfacard(fid);
        String facard = queryfacard.getFacard();
        System.out.println(queryfacard+"**********");
        String famoney = queryfacard.getFamoney();//余额
        System.out.println(famoney+"+++++");
        System.out.println(transfermoney+"****");
        int i = Integer.parseInt(famoney);
        int j = Integer.parseInt(transfermoney);
        String flaw = queryfacard.getCompany().getFlaw();//法人
        Tblfirmacc checkcompwd = companyBiz.checkcompwd(facard, paymentpwd);//验证支付密码是否正确
        if(checkcompwd!=null){
            if(sfname.equals(collect)&&queryfacard!=null&&flaw.equals(payee))
        {
            if(j<i){
                int sum=i-j;
                String money=sum+"";
                Integer drawmoney = companyBiz.drawmoney(money, fid);
                return "1";
            }else{
                return "2";
            }
        }else {
            return "0";
        }
        }else{
            return "3";
        }
    }


}
