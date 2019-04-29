package cn.majestyz.controller;

import cn.majestyz.entity.Msg;
import cn.majestyz.entity.TCartitem;
import cn.majestyz.entity.TUser;
import cn.majestyz.service.TOrderService;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by MeiZhen on 2019/4/29.
 */
@Controller
public class OrderController {
    @Autowired
    TOrderService orderService;
    // 1.数据库交互
    // 2.负责页面跳转
    @RequestMapping(value = "/carts_order_confirm",method = RequestMethod.GET)//注册要用POST
    public String toCartOrderConfirm(){//json格式获取请求对象
        System.out.println("toCartOrderConfirm");
        return "carts_order_confirm";
    }
}
