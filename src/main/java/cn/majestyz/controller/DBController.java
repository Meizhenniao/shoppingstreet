package cn.majestyz.controller;

import cn.majestyz.entity.Msg;
import cn.majestyz.entity.TUser;
import cn.majestyz.service.TUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.HtmlUtils;

import javax.servlet.http.HttpSession;

/**
 * Created by MeiZhen on 2019/4/20.
 */
@Controller
public class DBController {
    @Autowired
    TUserService userService;

    //注册操作
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

    //登录操作
    @RequestMapping(value = "/login",method = RequestMethod.POST)//登陆要用POST
    @ResponseBody
    public Msg login(String username, String password, HttpSession session){
        TUser user = userService.identifyUser(username,password);
        if(user != null){
            session.setAttribute("user", user);
            return Msg.success();
        }else{
            return Msg.fail().add("msg","用户名或者密码错误");
        }
    }

}
