package cn.majestyz.service;

import cn.majestyz.entity.TCartitem;

import java.util.List;

/**
 * Created by MeiZhen on 2019/4/23.
 */
public interface TCartitemService {

    //???默认是public?
    List<TCartitem> getLimitedCartitemsByUserId(int userid, int limit);

    //获取某用户的购物车列表
    List<TCartitem> getCartitemsByUserId(int userid);

    //Cartitem表中判断商品原来在不在某人的购物车里
    TCartitem quertCartItem(int goodsitemid, int userid);

    //Cartitem表中新增Cartitem记录
    boolean newCartItem(int goodsitemid, int userid);

    //Cartitem表中将原来的商品数量加一
    boolean addGoodsAmount(int goodsid,int userid,int goodsamount);

    //Cartitem表中将原来的商品数量减一
    boolean subGoodsAmount(int goodsid,int userid,int goodsamount);
}
