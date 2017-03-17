package com.muly.interceptors;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Method;

/**
 * 拦截器
 *
 * @author zhoubo
 * @create 2017-03-16 15:40
 **/

public class UserAccessApiInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //从传入的handel中检查是否有AccessRequired的声明
        HandlerMethod handlerMethod = (HandlerMethod) handler;
        Method method = handlerMethod.getMethod();
        AccessRequired annotation = method.getAnnotation(AccessRequired.class);
        if (annotation != null) {
            System.out.println("你遇到了：@AccessRequired");
            String accessToken = request.getParameter("id");
            System.out.println("this is id :"+accessToken);
            String type = annotation.type();
            System.out.println("type = " + type);
            boolean write = annotation.write();
            System.out.println("write = " + write);

            //根据type与write，结合session/cookie等身份信息进行检查
            //如果权限检查不通过，可以输出特定信息、进行跳转等操作
            //并且一定要return false，表示被拦截的方法不用继续执行了
            /**
             * Do something
             */
            return true;

        }
        // 没有注解通过拦截
        return true;
    }

    }

