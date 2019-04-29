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
    @RequestMapping(value = "/query_goodslist_namelike",method = RequestMethod.POST)//???为什么是POST
    @ResponseBody//???什么情况下要用responseBody,返回的数据写到http请求中???所以我这个msg的内容也会写到http请求里吗
    public Msg getGoodsListByNameLike(@RequestParam(value = "keyword") String keyword, @RequestParam(value = "page", defaultValue = "1") int page){
        PageHelper.startPage(page, 12);//???
        List<TGoods> goods = goodsService.queryGoodsByNameLike(keyword);
        PageInfo<TGoods> pageInfo = new PageInfo<>(goods, 5);
        if(goods.size()==0){
            return Msg.fail();
        }else {
            return Msg.success().add("pageInfo", pageInfo);
        }
    }

    @RequestMapping(value = "/query_goods",method = RequestMethod.POST)
    @ResponseBody
    public Msg getGooodsByGoodsId(@RequestParam(value = "goodsid")int goodsid){
        TGoods goods = goodsService.queryGoodsById(goodsid);
        if(goods !=null){
            System.out.println("goodsname="+goods.getGoodsname());
            return Msg.success().add("goods",goods);
        }else{
            return Msg.fail();
        }
    }

    //2.仅负责跳转
    @RequestMapping(value = "/goods_searchresult", method = RequestMethod.GET)
    public String toSearch() {
        return "goods_searchresult";
    }

    //跳转到商品详情页面
    @RequestMapping(value = "/goods_detail",method = RequestMethod.GET)
    public String toGoodsDetail(){
        return "goods_detail";
    }
}
