package com.zhbit.express.controller;

import com.alibaba.fastjson.JSONObject;
import com.zhbit.express.entity.User;
import com.zhbit.express.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by hugo on 2018/1/25/.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    User user;

    @RequestMapping(value = "/addUser")
    public String addUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = new User();
        user.setEmail( request.getParameter("register_email"));
        user.setName(request.getParameter("register_name"));
        user.setPassword(request.getParameter("register_password"));
        userService.saveUser(user);
        return "redirect:/login";
    }

@PostMapping("/register_check")//注册用户时的数据检查
public void register_check(HttpServletRequest request, HttpServletResponse response){
    if(!userService.findUserbyEmail(request.getParameter("register_email"))){//如果邮箱被使用
    }
}
    @PostMapping("/checkLogin")//用户登录时的数据检查
    public void login_check(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out=response.getWriter();
        //注意这里的request.getParameter("username")取的是data里面的那个json对象的username,而非<input>里面那个，同理password也一样
        String username=request.getParameter("username");
        String password=request.getParameter("password");

        JSONObject json=new JSONObject();
        User user = userService.userLogin(username,password);
        if(user!=null){//验证用户名&密码
            request.getSession().setAttribute("user",user);
            json.put("result","success");
        }else{
            json.put("result","error");
        }
        out.print(json);
    }
    @PostMapping("/editContent")
    public void editInfo_content(HttpServletRequest request,HttpServletResponse response)throws IOException{
        User user1 = new User();
        User user = (User) request.getSession().getAttribute("user");
        user1.setId(user.getId());
        user1.setName(request.getParameter("username"));
        user1.setPassword(request.getParameter("password"));
        user1.setSex(request.getParameter("sex"));
        user1.setnickname(request.getParameter("nickname"));
        user1.setPhone(request.getParameter("phone"));
        user1.setAddress(request.getParameter("address"));

        userService.editInfo(user.getId(),user1);

        request.getSession().setAttribute("user",userService.getUser(user.getId()));

        PrintWriter out=response.getWriter();
        JSONObject json=new JSONObject();
        json.put("result","success");
        out.print(json);

    }
    //用户的主页面
    @RequestMapping("/main")
    public ModelAndView main(){
    return new ModelAndView("index");
    }
    //退出登录
    @RequestMapping("/logout")
    public ModelAndView logout(HttpServletRequest request, HttpServletResponse response){
        request.getSession().setAttribute("user",null);
        return new ModelAndView("redirect:/login");
    }
    @RequestMapping("/editInfo")//修改个人信息
    public ModelAndView editInfo(HttpServletRequest request, HttpServletResponse response){
        return new ModelAndView("edit");
    }
    @RequestMapping("/addOrder")//添加订单
    public ModelAndView addOrder(HttpServletRequest request, HttpServletResponse response){
        return new ModelAndView("addOrder");
    }
    @RequestMapping("/submitOrder")
    public ModelAndView submitOrder(HttpServletRequest request, HttpServletResponse response){

        return new ModelAndView("payOrder");
    }
    @RequestMapping("/test")//测试
    public ModelAndView test(HttpServletRequest request, HttpServletResponse response){
        return new ModelAndView("test");
    }
}
