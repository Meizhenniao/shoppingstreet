package cn.majestyz.controller;

import cn.majestyz.entity.Msg;
import cn.majestyz.entity.TCartitem;
import cn.majestyz.entity.TOrder;
import cn.majestyz.entity.TUser;
import cn.majestyz.service.TCartitemService;
import cn.majestyz.service.TOrderService;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

/**
 * Created by MeiZhen on 2019/4/29.
 */
@Controller
public class OrderController {

    @Autowired
    TOrderService orderService;
    @Autowired
    TCartitemService cartitemService;

    // 1.数据库交互
    @RequestMapping(value = "/add_order_del",method = RequestMethod.POST)
    @ResponseBody
    public Msg addOrder(@RequestBody TCartitem cartitem,HttpSession session){
        System.out.println("controller addOrder");
        String expressNumber = getExpressNumber();
        String date = expressNumber.substring(0,13);
        int a = orderService.addOrder(expressNumber,cartitem.getGoodsid(),cartitem.getUserid(),cartitem.getGoodsamount(),"申通快递","支付宝",cartitem.getGoods().getPrice()*cartitem.getGoodsamount());
        if(a == 1){
            System.out.println("a ====== 1");
            if(cartitemService.delGoodsInCart(cartitem.getGoodsid(),cartitem.getUserid())){
                session.setAttribute("date",date);
                return Msg.success();
            }else{
                return Msg.fail();
            }
        }else{
            System.out.println("shibai ");
            return Msg.fail();
        }
    }

    @RequestMapping(value = "/query_order_now")
    @ResponseBody
    public Msg getOrderNow(HttpSession session){
        TUser user = (TUser) session.getAttribute("user");
        String date = (String) session.getAttribute("date");
        List<TOrder> orders = orderService.queryOrderByUserIdDateLike(user.getId(),date);
        return Msg.success().add("orders",orders);
    }

    @RequestMapping(value = "/query_order")
    @ResponseBody
    public Msg getOrder(HttpSession session){
        TUser user = (TUser) session.getAttribute("user");
        List<TOrder> orders = orderService.queryOrderByUserId(user.getId());
        return Msg.success().add("orders",orders);
    }


    // 2.负责页面跳转
    @RequestMapping(value = "/carts_order_confirm",method = RequestMethod.GET)//注册要用POST
    public String toCartOrderConfirm(){//json格式获取请求对象
        System.out.println("toCartOrderConfirm");
        return "carts_order_confirm";
    }

    @RequestMapping(value = "/carts_order_submit",method = RequestMethod.GET)//注册要用POST
    public String toCartOrderSubmit(){//json格式获取请求对象
        System.out.println("toCartOrderSubmit");
        return "carts_order_submit";
    }


    public String getExpressNumber(){
        SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
        String newDate=sdf.format(new Date());
        String result="";
        Random random=new Random();
        for(int i=0;i<3;i++){
            result+=random.nextInt(10);
        }
        return newDate+result;
    }
}
