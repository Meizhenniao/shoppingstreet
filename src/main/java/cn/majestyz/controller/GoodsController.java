package cn.majestyz.controller;

import cn.majestyz.entity.Msg;
import cn.majestyz.entity.TGoods;
import cn.majestyz.service.TGoodsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by MeiZhen on 2019/4/25.
 */
@Controller
public class GoodsController {

    @Autowired
    TGoodsService goodsService;
    //负责和数据库交互
    @RequestMapping(value = "/search_res",method = RequestMethod.POST)//???为什么是POST
    @ResponseBody//???什么情况下要用responseBody,返回的数据写到http请求中???所以我这个msg的内容也会写到http请求里吗
    public Msg searchByName_like(@RequestParam(value = "keyword") String keyword, @RequestParam(value = "page", defaultValue = "1") int page){
        System.out.println("会进searchByName_like");
        PageHelper.startPage(page, 12);//???
        List<TGoods> goods = goodsService.queryGoodsByNameLike(keyword);
        PageInfo<TGoods> pageInfo = new PageInfo<>(goods, 5);
        if(goods.size()==0){
            return Msg.fail();
        }else {
            return Msg.success().add("pageInfo", pageInfo);
        }
    }

    @RequestMapping(value = "/getgoodsitemdetail",method = RequestMethod.POST)
    @ResponseBody
    public Msg searchGooodsItemByGoodsId(@RequestParam(value = "goodsitemid")int goodsitemid){
        TGoods goodsitem = goodsService.queryGoodsItemById(goodsitemid);
        if(goodsitem !=null){
            System.out.println("goodsitemname="+goodsitem.getGoodsname());
            return Msg.success().add("goodsitem",goodsitem);
        }else{
            return Msg.fail();
        }
    }

    //2.只负责页面跳转
    //跳转到搜索结果界面
    @RequestMapping(value = "/search", method = RequestMethod.GET)//???和上面名字一样啊emmmmm???
    public String toSearch() {
        System.out.println("会进tosearch");
        return "searchresult";//???从哪里的语句控制调过来的啊啊啊啊
    }

    //跳转到商品详情页面,从searchresult页面传item过来还是传goodsid
    @RequestMapping(value = "/goodsdetail",method = RequestMethod.GET)
    public String toGoodsDetail(){
        return "goodsdetail";
    }
}
