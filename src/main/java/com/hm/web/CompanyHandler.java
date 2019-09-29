package com.hm.web;

import com.hm.biz.CompanyBiz;
import com.hm.biz.MenuBiz;
import com.hm.entity.*;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
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
            System.out.println("注册成功");
            modelAndView.setViewName("CompanyLogin");
        }else{
            System.out.println("注册失败");
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
}
