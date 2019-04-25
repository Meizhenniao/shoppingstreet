package cn.majestyz.controller;

import cn.majestyz.entity.Msg;
import cn.majestyz.entity.TUser;
import cn.majestyz.service.TCartitemService;
import cn.majestyz.service.TUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by MeiZhen on 2019/4/20.
 */
@Controller
public class UserController {
    
    @Autowired
    TUserService userService;

//    1.需要操作user表的controller start
    //注册操作（点击注册按钮）
    @RequestMapping(value = "/regist",method = RequestMethod.POST)//注册要用POST
    @ResponseBody
    public Msg regist(@RequestBody TUser user){//json格式获取请求对象
        boolean exist = userService.isExist(user.getUsername());
        System.out.println(exist);
        if(!exist){
            userService.addUser(user);
            return Msg.success();
        }else{
            return Msg.fail().add("msg","用户名不可用");
        }
    }
    //登录操作(点击登录按钮)
    @RequestMapping(value = "/login",method = RequestMethod.POST)//登陆要用POST
    @ResponseBody
    public Msg login(String username, String password, HttpSession session){
        TUser user = userService.identifyUser(username,password);
        if(user != null){
            session.setAttribute("user", user);//将user存入session
            return Msg.success();
        }else{
            return Msg.fail().add("msg","用户名或者密码错误");
        }
    }
//    1.需要操作user表的controller end

//    2.只负责页面跳转的和用户个人有关的controller  start
    //入登录页面
    @RequestMapping(value = "/to_login",method = RequestMethod.GET)
    public String toLogin(){
        System.out.println("jump to login.jsp");
        return "login";
    }
    //入注册页面
    @RequestMapping(value = "/to_regist",method = RequestMethod.GET)
    public String toRegist(){
        System.out.println("jump to regist.jsp");
        return "regist";
    }
    //入个人中心
    @RequestMapping("/personalcenter")
    public String toPersonalCenter(){
        System.out.println("jump to personalcenter.jsp");
        return "personalcenter";
    }
    //入注册页面
    @RequestMapping(value = "/to_index",method = RequestMethod.GET)
    public String toIndex(){
        System.out.println("jump to index.jsp");
        return "index";
    }
    //退出登录
    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    public String logout(HttpSession session){
        session.setAttribute("user",null);
        return "index";
    }
//    2.只负责页面跳转的和用户个人有关的controller  end


}
