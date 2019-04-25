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
}
