package cn.majestyz.service.impl;

import cn.majestyz.entity.TOrder;
import cn.majestyz.entity.TOrderExample;
import cn.majestyz.mapper.TOrderMapper;
import cn.majestyz.service.TOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by MeiZhen on 2019/4/29.
 */
@Service
public class TOrderServiceImpl implements TOrderService{
    @Autowired
    TOrderMapper orderMapper;

    @Override
    public int addOrder(String ordernumber, int goodsid, int userid, int goodsamount, String expresscompany, String paymentpattern) {
        TOrder order = new TOrder();
        order.setOrdernumber(ordernumber);
        order.setGoodsid(goodsid);
        order.setUserid(userid);
        order.setGoodsamount(goodsamount);
        order.setExpresscompany(expresscompany);
        order.setPaymentpattern(paymentpattern);
        int a =orderMapper.insertSelective(order);
        System.out.println("a = "+ a);
        return a;
//        return orderMapper.insertSelective(order);
    }
}
