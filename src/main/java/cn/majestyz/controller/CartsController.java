package cn.majestyz.controller;

import cn.majestyz.entity.Msg;
import cn.majestyz.entity.TCartitem;
import cn.majestyz.entity.TUser;
import cn.majestyz.service.TCartitemService;
import cn.majestyz.service.TUserService;
import com.sun.org.apache.xml.internal.serializer.ToUnknownStream;
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

//    1.需要操作cart表的controller start
    //没有点击按钮，js中获取购物车信息
    @RequestMapping(value = "/cartlist_pre",method = RequestMethod.GET)//为什么是GET???
    @ResponseBody
    public Msg getCartListPre(HttpSession session){//???什么时候需要写@RequestParam
        TUser user = (TUser)session.getAttribute("user");
        if(user == null){
            return Msg.fail();
        }else {
            List<TCartitem> cartitems = cartitemService.getLimitedCartitemsByUserId(user.getId(), LIMIT);
            return Msg.success().add("cartitems",cartitems);
        }
    }
//    1.需要操作cart表的controller end

//    2.仅仅负责跳转的controller start

//    2.仅仅负责跳转的controller end

}
