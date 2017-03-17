package com.muly.interceptors;

import com.muly.entity.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * 拦截器
 *
 * @author zhoubo
 * @create 2017-03-16 14:28
 **/
public class Myinterceptor implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        String id = httpServletRequest.getParameter("id");
        Integer id1 = Integer.valueOf(id) +1;
        System.out.println("the ID is"+id1);
        return true;
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
        System.out.println("==========");
        Map<String, Object> map= modelAndView.getModel();
        User user = (User) map.get("user");
        System.out.println("user name:"+user.getUserName());
        System.out.println("this is model:"+modelAndView.getModel().values());
        System.out.println("==========");
    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
        System.out.println("============完结了==========");

    }
}
