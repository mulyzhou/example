package com.muly.controller;

import com.muly.entity.User;
import com.muly.interceptors.AccessRequired;
import com.muly.service.IUserService;
import javax.annotation.Resource;
import javax.interceptor.Interceptor;
import javax.servlet.http.HttpServletRequest;

import com.muly.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 测试user控制器
 *
 * @author zhoubo
 * @create 2017-03-02 17:04
 **/
@Controller
@RequestMapping("/user")
public class UserController {
    //@Autowired
    //@Qualifier("userService")
    //@Resource(type = UserServiceImpl.class)
    //@Resource(name = "userService")
    //@Autowired
    @Resource
    private  IUserService userService;
    //TODO http://localhost:8080/user/showUser.do?id=1
    @RequestMapping("/showUser")
    //@AccessRequired(type = "user",write = false)
    public String toIndex(HttpServletRequest request, Model model){
        int userId = Integer.parseInt(request.getParameter("id"));
        Integer id1 = Integer.valueOf(userId) +1;
        User user = this.userService.getUserById(id1);
        model.addAttribute("user",user);
        return "showUser";
    }
    //TODO http://localhost:8080/user/showUserList.do
    @RequestMapping("/showUserList")
    public String list(Model model){
        List<User> list= this.userService.list();
        /*for (int i = 0; i < list.size(); i++) {
            User user = list.get(i);
            System.out.println(user.toString());
        }*/
        model.addAttribute("list",list);

        return "showUserList";
    }
}
