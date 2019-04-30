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

    TCartitem getCartitemByGoodsidAndUserid(int userid, int goodsid);

    //Cartitem表中判断商品原来在不在某人的购物车里
    TCartitem queryCartItem(int goodsid, int userid);

    //Cartitem表中新增Cartitem记录
    boolean newCartItem(int goodsid, int userid);

    //Cartitem表中新增一定数量的Cartitem的记录
    boolean newCartItem2(int goodsid, int userid, int amount);

    //Cartitem表中将原来的商品数量加一
    boolean addGoodsAmount(int goodsid,int userid,int goodsamount);

    //Cartitem表中将原来的商品数量加指定数量
    boolean addGoodsAmount2(int goodsid, int userid, int goodsamount, int amount);

    //Cartitem表中将原来的商品数量减一
    boolean subGoodsAmount(int goodsid,int userid,int goodsamount);

    boolean delGoodsInCart(int goodsid, int userid);

    boolean delAllCarts(int userid);

}
