package com.hm.web;

import com.hm.biz.CompanyBiz;
import com.hm.biz.MenuBiz;
import com.hm.entity.Company;
import com.hm.entity.Menu;
import javafx.geometry.Pos;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("page")
public class CompanyHandler {

    //公司登录
    private ModelAndView modelAndView=new ModelAndView();
    @Resource
    private CompanyBiz companyBiz;
    @Resource
    private MenuBiz menuBizImpl;
    @RequestMapping(value = "comlogin",method = RequestMethod.POST,produces = "application/json;charset=utf-8")
    public ModelAndView comlogin(HttpServletRequest req, String facc, String fpwd){

        Company company = companyBiz.comlogin(facc, fpwd);

        System.out.println(company+"*****");
        if(company!=null){
            req.getSession().setAttribute("company",company);
            List<Menu> menu = menuBizImpl.getMenu(company.getRid());
            System.out.println(menu+"cai菜单");
            for(Menu menu1:menu){
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
            System.out.println("注册成功");
            modelAndView.setViewName("CompanyLogin");
        }else{
            System.out.println("注册失败");
            modelAndView.setViewName("company/reg");
        }
        return modelAndView;
    }

}
