package com.hm.web;


import com.hm.biz.MenuBiz;
import com.hm.biz.UserBiz;
import com.hm.entity.User;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/manager")
public class ManagerHandler {
    @Resource
    private UserBiz biz;

    @Resource
    private MenuBiz menuBizImpl;
    private ModelAndView mav=null;
    @RequestMapping(value = "/adminLogin.action")
    public ModelAndView userlogin(HttpServletRequest request, User user)
    {
        System.out.println("+++++");
        User u = biz.userLogin(user.getUserid(),user.getUserpwd());
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
}
