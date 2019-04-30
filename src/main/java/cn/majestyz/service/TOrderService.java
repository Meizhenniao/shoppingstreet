package cn.majestyz.service;

/**
 * Created by MeiZhen on 2019/4/29.
 */
public interface TOrderService {
    int addOrder(String ordernumber, int goodsid, int userid, int goodsamount, String expresscompany, String paymentpattern);
}
