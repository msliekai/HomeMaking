package com.hm.aoplog;

import java.lang.annotation.*;

/**
 * @author hha
 * @date 2019-09-10 10:25
 */

//表示该注解用于什么地方。默认值为任何元素，表示该注解用于什么地方,参数和方法
//(包 方法)
@Target({ElementType.PARAMETER, ElementType.METHOD})
//定义该注解的生命周期
//(始终不会被丢弃运行期也保留)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface Log {

    /** 要执行的操作类型  比如：增加操作 **/
    public String operationType() default "";

    /** 要执行的具体操作  比如：添加用户 **/
    public String operationName() default "";

    /** 要执行的具体操作  比如：添加用户 **/
    public String operationWhere() default "";

}
