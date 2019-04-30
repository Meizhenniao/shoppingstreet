package cn.majestyz.controller;

import cn.majestyz.entity.Msg;
import cn.majestyz.entity.TCartitem;
import cn.majestyz.entity.TUser;
import cn.majestyz.service.TCartitemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by MeiZhen on 2019/4/20.
 */
@Controller
public class CartsController {
    //    当购物车需要限制显示的购物数量时
    public static final int LIMIT = 5;
    @Autowired
    TCartitemService cartitemService;

    // 1. 数据库交互
    //???这里的限制可以去掉
    @RequestMapping(value = "/query_cartitems_limit", method = RequestMethod.GET)//为什么是GET???
    @ResponseBody
    public Msg getCartitemsLimit(HttpSession session) {//???什么时候需要写@RequestParam
        System.out.println("getCartitemsLimit");
        TUser user = (TUser) session.getAttribute("user");
        if (user == null) {
            System.out.println("还没有登录");
            return Msg.fail();
        } else {
            List<TCartitem> cartitems = cartitemService.getLimitedCartitemsByUserId(user.getId(), LIMIT);
            return Msg.success().add("cartitems", cartitems);
        }
    }

    @RequestMapping(value = "/query_cartitems", method = RequestMethod.GET)//为什么是GET???
    @ResponseBody
    public Msg getCartitems(HttpSession session) {//???什么时候需要写@RequestParam
        System.out.println("controller getCartitems");
        TUser user = (TUser) session.getAttribute("user");
        if (user == null) {
            System.out.println("还没有登录");
            return Msg.fail();
        } else {
            System.out.println("登录了");
            List<TCartitem> cartitems = cartitemService.getCartitemsByUserId(user.getId());
            System.out.println("list的长度是"+cartitems.size());
            return Msg.success().add("cartitems", cartitems);
        }
    }

    //只有登录了的才能用到这个方法
    @RequestMapping(value = "/query_cartitem_goodsid", method = RequestMethod.GET)//为什么是GET???
    @ResponseBody
    public Msg getCartitemGoodsid(HttpSession session,int goodsid) {//???什么时候需要写@RequestParam
        System.out.println("conotroller getCartitemGoodsid");
        TUser user = (TUser) session.getAttribute("user");
        TCartitem cartitem = cartitemService.getCartitemByGoodsidAndUserid(user.getId(),goodsid);
        return Msg.success().add("cartitem", cartitem);
    }

    @RequestMapping(value = "/add_cart", method = RequestMethod.POST)
    @ResponseBody
    public Msg addGoodsToCart(int goodsid, HttpSession session) {
        System.out.println("controller addGoodsToCart");
        TUser user = (TUser) session.getAttribute("user");
        int userid = user.getId();
        TCartitem cartitem = cartitemService.queryCartItem(goodsid,userid);
        if(cartitem==null){
            if(cartitemService.newCartItem(goodsid,userid)){
                return Msg.success();
            }else{
                return Msg.fail();
            }
        }else{
            int goodsamount =  cartitem.getGoodsamount();
            System.out.println("原来的数量为："+goodsamount);
            if(cartitemService.addGoodsAmount(goodsid,userid,goodsamount)){
                return Msg.success();
            }else {
                return Msg.fail();
            }
        }
    }

    @RequestMapping(value = "/add_cart_amount",method = RequestMethod.POST)
    @ResponseBody
    public Msg addGoodsToCartAmount(int goodsid,HttpSession session,int amount){
        System.out.println("goodsid="+goodsid+",amount="+amount);
        TUser user = (TUser) session.getAttribute("user");
        int userid = user.getId();
        TCartitem cartitem = cartitemService.queryCartItem(goodsid,userid);
        if(cartitem==null){
            if(cartitemService.newCartItem2(goodsid,userid,amount)){
                return Msg.success();
            }else{
                return Msg.fail();
            }
        }else{
            int goodsamount =  cartitem.getGoodsamount();
            System.out.println("原来的数量为："+goodsamount);
            if(cartitemService.addGoodsAmount2(goodsid,userid,goodsamount,amount)){
                return Msg.success();
            }else {
                return Msg.fail();
            }
        }
    }

    //一个一个减少
    @RequestMapping(value = "/sub_cart", method = RequestMethod.POST)
    @ResponseBody
    public Msg subGoodsToCart(int goodsid, HttpSession session) {
        System.out.println("controller subGoodsToCart");
        TUser user = (TUser) session.getAttribute("user");
        int userid = user.getId();
        TCartitem cartitem = cartitemService.queryCartItem(goodsid,userid);
        int goodsamount =  cartitem.getGoodsamount();
        if(cartitemService.subGoodsAmount(goodsid,userid,goodsamount)){
            return Msg.success();
        }else{
            return Msg.fail();
        }

    }


    @RequestMapping(value = "/del_cart",method = RequestMethod.POST)
    @ResponseBody
    public Msg delGoodsInCart(int goodsid,HttpSession session){
        System.out.println("controller delGoodsInCart");
        TUser user = (TUser) session.getAttribute("user");
        int userid = user.getId();
        if(cartitemService.delGoodsInCart(goodsid,userid)){
            return Msg.success();
        }else{
            return Msg.fail();
        }
    }


    @RequestMapping(value = "/del_allcarts",method = RequestMethod.POST)
    @ResponseBody
    public Msg delAllCarts(HttpSession session){
        System.out.println("controller delAllCarts");
        TUser user = (TUser) session.getAttribute("user");
        int userid = user.getId();
        if(cartitemService.delAllCarts(userid)){
            return Msg.success();
        }else{
            return Msg.fail();
        }
    }

    //2
    @RequestMapping(value = "/islogin", method = RequestMethod.GET)
    @ResponseBody
    public Msg islogin(HttpSession session) {
        TUser user = (TUser) session.getAttribute("user");
        if(user != null){
            return Msg.success();
        }else{
            return Msg.fail();
        }
    }

    //3 仅负责跳转
    @RequestMapping(value = "/carts_browse",method = RequestMethod.GET)
    public String toCartsBrowse(){
        return "carts_browse";
    }


}
