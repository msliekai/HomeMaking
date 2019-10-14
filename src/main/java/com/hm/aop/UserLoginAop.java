package com.hm.aop;

import com.hm.entity.TblUser;
import com.opensymphony.xwork2.util.logging.Logger;
import com.opensymphony.xwork2.util.logging.LoggerFactory;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * @author hha
 * @date 2019-10-14 14:01
 */
public class UserLoginAop {

    private final Logger log = LoggerFactory.getLogger(UserLoginAop.class);

//    @Pointcut("within(com.cn.winter.controller..*) && !within(com.cn.winter.controller.login.LoginController)")
    public void pointCut(){}

    @Around("pointCut()")
    public Object trackInfo(ProceedingJoinPoint pjp) throws Throwable {
        HttpServletRequest request=((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        TblUser use=(TblUser)request.getSession().getAttribute("userbacc");

        if(use == null || use == null) {
            log.info("-------------没有登录-------------");
            return "redirect:/login";
        }
        return pjp.proceed();
    }


}
