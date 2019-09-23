package com.hm.web;

import com.hm.biz.CompanyBiz;
import com.hm.entity.Company;
import com.hm.entity.Credential;
import javafx.geometry.Pos;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
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
    @Resource
    private CompanyBiz companyBiz;
    @RequestMapping(value = "comlogin",method = RequestMethod.POST,produces = "application/json;charset=utf-8")
    public ModelAndView comlogin(HttpServletRequest req, String facc, String fpwd){

        Company company = companyBiz.comlogin(facc, fpwd);

        if(company!=null){

            req.getSession().setAttribute("company",company);
            modelAndView.setViewName("company/head");//成功后跳转的界面
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
            modelAndView.setViewName("company/comregister");
        }
        return modelAndView;
    }
    //公司证书列表
    @RequestMapping("Comcredential")
    public @ResponseBody
    Map<String,Object> Comcredential(HttpServletRequest request, HttpSession session)
    {
        Company company1= (Company) session.getAttribute("company");
        Integer page= company1.getPage();
        Integer limit=company1.getLimit();
        //数据库查出条数
        int count=0;

        List<Credential> list=companyBiz.findCreList(company1);
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("code",0);
        map.put("count",count);
        map.put("data",list);

        return map;
    }
}
