package com.zhbit.express.controller;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by hugo on 2018/1/25/.
 */
public class MultiController extends MultiActionController {
    public ModelAndView add(HttpServletRequest request, HttpServletResponse response){
        System.out.println("----add----");
        return new ModelAndView("/multi","method","add");
    }
    public ModelAndView update(HttpServletRequest request, HttpServletResponse response){
        System.out.println("----update----");
        return new ModelAndView("/multi","method","update");
    }
}
