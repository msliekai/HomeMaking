package com.hm.aop;


import com.hm.aop.Log;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

import java.lang.reflect.Method;

/**
 * @author hha
 * @date 2019-09-10 10:30
 */
@Aspect
@Component
public class SystemLogAspect {

//    private  static  final Logger logger = LoggerFactory.getLogger(SystemLogAspect. class);

    //@Pointcut("execution(* com.hm.web..*.*(..))  ")
    public void logPoint() {
    }

//    /**
//     * 前置通知 用于拦截Controller层记录用户的操作
//     *
//     * @param joinPoint 切点
//     */
//    @Before("logPoint()")
//    public void doBefore(JoinPoint joinPoint) {
//        System.out.println("==========执行controller前置通知===============");
//        if(logger.isInfoEnabled()){
//            logger.info("before " + joinPoint);
//        }
//    }

    //@After("logPoint()")
    public void after(JoinPoint joinPoint) throws ClassNotFoundException {
        System.out.println("日志--------------");
//        HttpServletRequest request=((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
//        Object obj=request.getSession().getAttribute("admacc");
//        if (obj != null) {
//            TblAdmin tblAdmin = (TblAdmin) obj;

            String targetName = joinPoint.getTarget().getClass().getName();
            String methodName = joinPoint.getSignature().getName();
            Object[] arguments = joinPoint.getArgs();
            Class targetClass = Class.forName(targetName);
            Method[] methods = targetClass.getMethods();
            String operationType = "";
            String operationName = "";
            for (Method method : methods) {
                if (method.getName().equals(methodName)) {
                    Class[] clazzs = method.getParameterTypes();
                    if (clazzs.length == arguments.length) {
                        operationType = method.getAnnotation(Log.class).operationType();
                        operationName = method.getAnnotation(Log.class).operationName();
                        break;
                    }
                }
            }
            //*========控制台输出=========*//
            System.out.println("=====controller后置通知开始=====");
            System.out.println("请求方法:" + (joinPoint.getTarget().getClass().getName() + "." + joinPoint.getSignature().getName() + "()")+"."+operationType);
            System.out.println("方法描述:" + operationName+":"+operationType);
//            System.out.println("请求人:" + tblAdmin.getAname());
//        } else {
//            System.out.println("调用人：未知");
//        }

    }

//    //配置后置返回通知,使用在方法aspect()上注册的切入点
//    @AfterReturning("logPoint()")
//    public void afterReturn(JoinPoint joinPoint){
//        System.out.println("=====执行controller后置返回通知=====");
////        if(logger.isInfoEnabled()){
////            logger.info("afterReturn " + joinPoint);
////        }
//    }

    //@AfterThrowing(pointcut = "logPoint()", throwing="e")
    public void  throwing(JoinPoint joinPoint, Throwable e){
        System.out.println("异常处理======");
        System.out.println(e.getClass().getName());

    }

}
