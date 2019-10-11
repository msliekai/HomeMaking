package com.hm.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import java.lang.reflect.Method;

@Aspect
@Component
public class Transaction {
    private String visitTime;//访问时间
    private Class aClass;//访问的类
    private Method method;//访问的方法
    @Pointcut("execution(* com.hm.web.*.*(..))")//切点 银行交易
    public void transpoint(){
        System.out.println("--------------切点");

    }

    @After("transpoint()")
    public void after(JoinPoint joinPoint) throws NoSuchMethodException {
        aClass = joinPoint.getTarget().getClass();//获取当前的类
        String methodName = joinPoint.getSignature().getName();//获取方法名
        Object[] args = joinPoint.getArgs();//获取方法的参数
        if(args==null||args.length==0){
            method = aClass.getMethod(methodName);//获取某个类的方法名 无参数
        }/*else {
            Class[] classe=new Class[args.length];
            for(int i=0;i<args.length;i++){
                classe[i]=args[i].getClass();
            }
            method = aClass.getMethod(methodName, classe);
        }*/
        System.out.println(aClass);
        System.out.println(methodName);
        System.out.println(method);
        System.out.println("银行交易日志操作");
}
}
