package cn.majestyz.service;

import cn.majestyz.entity.TOrder;

import java.util.List;

/**
 * Created by MeiZhen on 2019/4/29.
 */
public interface TOrderService {
    int addOrder(String ordernumber, int goodsid, int userid, int goodsamount, String expresscompany, String paymentpattern,int sumprice);

    List<TOrder> queryOrderByUserIdDateLike(int id,String date);

    List<TOrder> queryOrderByUserId(int id);
}
