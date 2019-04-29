package cn.majestyz.service.impl;

import cn.majestyz.entity.TCartitem;
import cn.majestyz.entity.TCartitemExample;
import cn.majestyz.mapper.TCartitemMapper;
import cn.majestyz.service.TCartitemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by MeiZhen on 2019/4/23.
 */
@Service
public class TCartitemServiceImpl implements TCartitemService{
    @Autowired
    TCartitemMapper cartitemMapper;
    @Override
    public List<TCartitem> getLimitedCartitemsByUserId(int userid, int limit) {
        TCartitemExample example =new TCartitemExample();
        example.createCriteria().andUseridEqualTo(userid);
        List<TCartitem> result= cartitemMapper.selectByExample(example);
        if(result.size()>limit){
            return result.subList(0,limit);
        }else{
            return result;
        }

    }

    //获取某user的购物车列表
    @Override
    public List<TCartitem> getCartitemsByUserId(int userid) {
        TCartitemExample example =new TCartitemExample();
        example.createCriteria().andUseridEqualTo(userid);
        return cartitemMapper.selectByExample(example);
    }

    @Override
    public TCartitem queryCartItem(int goodsid, int userid) {
        TCartitemExample example = new TCartitemExample();
        example.createCriteria().andGoodsidEqualTo(goodsid).andUseridEqualTo(userid);
        List<TCartitem> cartitems = cartitemMapper.selectByExample(example);
        if(cartitems.size() == 0){
            System.out.println("这个商品在我的购物车里是没有的");
            return null;
        }else {
            System.out.println("曾经加过这个商品,商品数量目前是："+cartitems.get(0).getGoodsamount());
            return cartitems.get(0);
        }
    }

    @Override
    public boolean newCartItem(int goodsid, int userid) {
        TCartitem cartitem = new TCartitem();
        cartitem.setGoodsid(goodsid);
        cartitem.setUserid(userid);
        cartitem.setGoodsamount(1);
        int a = cartitemMapper.insertSelective(cartitem);
        if(a == 1) {
            return true;
        }else {
            return false;
        }
    }

    @Override
    public boolean newCartItem2(int goodsid, int userid,int amount) {
        TCartitem cartitem = new TCartitem();
        cartitem.setGoodsid(goodsid);
        cartitem.setUserid(userid);
        cartitem.setGoodsamount(amount);
        int a = cartitemMapper.insertSelective(cartitem);
        if(a == 1) {
            return true;
        }else {
            return false;
        }
    }

    @Override
    public boolean addGoodsAmount(int goodsid,int userid,int goodsamount) {
        TCartitem cartitem = new TCartitem();
        cartitem.setGoodsamount(goodsamount+1);
        TCartitemExample example = new TCartitemExample();
        example.createCriteria().andGoodsidEqualTo(goodsid).andUseridEqualTo(userid);
        int a = cartitemMapper.updateByExampleSelective(cartitem,example);
        if(a==1) {
            return true;
        }else {
            return false;
        }
    }

    @Override
    public boolean addGoodsAmount2(int goodsid,int userid,int goodsamount,int amount) {
        TCartitem cartitem = new TCartitem();
        cartitem.setGoodsamount(goodsamount+amount);
        TCartitemExample example = new TCartitemExample();
        example.createCriteria().andGoodsidEqualTo(goodsid).andUseridEqualTo(userid);
        int a = cartitemMapper.updateByExampleSelective(cartitem,example);
        if(a==1) {
            return true;
        }else {
            return false;
        }
    }

    @Override
    public boolean subGoodsAmount(int goodsid,int userid,int goodsamount) {
        TCartitem cartitem = new TCartitem();
        cartitem.setGoodsamount(goodsamount-1);
        TCartitemExample example = new TCartitemExample();
        example.createCriteria().andGoodsidEqualTo(goodsid).andUseridEqualTo(userid);
        int a = cartitemMapper.updateByExampleSelective(cartitem,example);
        if(a==1) {
            return true;
        }else {
            return false;
        }
    }

    @Override
    public boolean delGoodsInCart(int goodsid, int userid) {
        TCartitemExample example = new TCartitemExample();
        example.createCriteria().andGoodsidEqualTo(goodsid).andUseridEqualTo(userid);
        int a = cartitemMapper.deleteByExample(example);
        if(a==1) {
            return true;
        }else {
            return false;
        }
    }

    @Override
    public boolean delAllCarts(int userid) {
        TCartitemExample example = new TCartitemExample();
        example.createCriteria().andUseridEqualTo(userid);
        int a = cartitemMapper.deleteByExample(example);
//        int a = cartitemMapper.deleteByPrimaryKey(userid);
        System.out.println("删除后"+a);
        if(a>0) {
            return true;
        }else {
            return false;
        }
    }


}
