package cn.majestyz.service.impl;

import cn.majestyz.entity.TOrder;
import cn.majestyz.entity.TOrderExample;
import cn.majestyz.mapper.TOrderMapper;
import cn.majestyz.service.TOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by MeiZhen on 2019/4/29.
 */
@Service
public class TOrderServiceImpl implements TOrderService{
    @Autowired
    TOrderMapper orderMapper;

    @Override
    public int addOrder(String ordernumber, int goodsid, int userid, int goodsamount, String expresscompany, String paymentpattern,int sumprice) {
        TOrder order = new TOrder();
        order.setOrdernumber(ordernumber);
        order.setGoodsid(goodsid);
        order.setUserid(userid);
        order.setGoodsamount(goodsamount);
        order.setExpresscompany(expresscompany);
        order.setPaymentpattern(paymentpattern);
        order.setSumprice(sumprice);
//        int a =orderMapper.insertSelective(order);
//        System.out.println("a = "+ a);
//        return a;
        return orderMapper.insertSelective(order);
    }

    @Override
    public List<TOrder> queryOrderByUserIdDateLike(int id,String date) {
        TOrderExample example = new TOrderExample();
        example.createCriteria().andUseridEqualTo(id).andOrdernumberLike(date+'%');
//        List<TOrder> a = orderMapper.selectByExample(example);
//        System.out.println("list 的长度是："+a.size());
//        return a;
        return orderMapper.selectByExample(example);
    }

    @Override
    public List<TOrder> queryOrderByUserId(int id) {
        TOrderExample example = new TOrderExample();
        example.createCriteria().andUseridEqualTo(id);
//        List<TOrder> a = orderMapper.selectByExample(example);
//        System.out.println("list 的长度是："+a.size());
//        return a;
        return orderMapper.selectByExample(example);
    }


}
