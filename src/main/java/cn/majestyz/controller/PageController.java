package cn.majestyz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by MeiZhen on 2019/4/20.
 */
@Controller
public class PageController {

    //跳到登录页面
    @RequestMapping(value = "/to_login",method = RequestMethod.GET)
    public String toLogin(){
        System.out.println("jump to login.jsp");
        return "login";
    }

    //跳到注册页面
    @RequestMapping(value = "/to_regist",method = RequestMethod.GET)
    public String toRegist(){
        System.out.println("jump to regist.jsp");
        return "regist";
    }

    //跳到注册页面
    @RequestMapping(value = "/to_index",method = RequestMethod.GET)
    public String toIndex(){
        System.out.println("jump to index.jsp");
        return "index";
    }
    //退出登录
}
