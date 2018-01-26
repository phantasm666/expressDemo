package com.zhbit.express.controller;

import com.zhbit.express.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by hugo on 2018/1/25/.
 */
@Controller
public class UserController {
    @RequestMapping(value = "/user/addUser",method= RequestMethod.GET)
    public ModelAndView addUser(User user, HttpServletRequest request, HttpServletResponse response){
        String result = "this is addUser--------";
        request.setAttribute("userName",user.getUserName());
        request.setAttribute("age",user.getAge());
        return new ModelAndView("/userResult");
    }


    @RequestMapping(value = "/user/addUserJson")
    public ModelAndView addUserJson(User user, HttpServletRequest request, HttpServletResponse response){
        String result = "this is addUserJson--------";
        request.setAttribute("userName",user.getUserName());
        request.setAttribute("age",user.getAge());
        return new ModelAndView("/userResult");
    }


    //优化版使用request.setAttribute
    @RequestMapping(value = "/user/toUser")
    public ModelAndView goodUser(HttpServletRequest request, HttpServletResponse response){
        String result = "this is toUser---------";
        return new ModelAndView("/json");
    }
}
