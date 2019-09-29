//package com.hm.aop;
//
//import org.aspectj.lang.JoinPoint;
//import org.aspectj.lang.annotation.After;
//import org.aspectj.lang.annotation.Aspect;
//import org.aspectj.lang.annotation.Pointcut;
//import org.springframework.stereotype.Component;
//
//@Aspect
//@Component
//public class Transaction {
//    @Pointcut("execution(* com.hm.web.*changefacard(..))")//切点 银行交易
//    public void transpoint(){
//
//    }
//    @After("transpoint()")
//    public void after(JoinPoint joinPoint){
//        System.out.println("银行交易明细");
//    }
//}
