package com.muly.interceptors;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 自定义注解
 *
 * @author zhoubo
 * @create 2017-03-16 15:38
 **/
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface AccessRequired {
    /**
     * 权限类型
     * @return
     */
    String type() default "";
    /**
     * 是否需要写权限
     * @return
     */
    boolean write() default false;
}
