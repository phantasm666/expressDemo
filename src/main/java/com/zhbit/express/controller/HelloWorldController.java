package com.zhbit.express.controller;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by hugo on 2018/1/24/.
 */
public class HelloWorldController implements Controller{
    public ModelAndView handleRequest(HttpServletRequest httpServletRequest,
                                      HttpServletResponse httpServletResponse) throws Exception {
        String name = "hugo";
        System.out.println("-----------hello------------");
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("map1","名字1");
        map.put("map2","名字2");
        map.put("map3","名字3");
        return new ModelAndView("/welcome","map",map);
    }
}
