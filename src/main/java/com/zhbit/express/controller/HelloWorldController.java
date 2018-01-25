package com.zhbit.express.controller;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by hugo on 2018/1/24/.
 */
public class HelloWorldController implements Controller{
    public ModelAndView handleRequest(HttpServletRequest httpServletRequest,
                                      HttpServletResponse httpServletResponse) throws Exception {

        System.out.println("-----------hello------------");
        return new ModelAndView("/welcome");
    }
}
