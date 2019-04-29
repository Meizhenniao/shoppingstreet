package cn.majestyz.service.impl;

import cn.majestyz.entity.TGoods;
import cn.majestyz.entity.TGoodsExample;
import cn.majestyz.mapper.TGoodsMapper;
import cn.majestyz.service.TGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by MeiZhen on 2019/4/25.
 */
@Service
public class TGoodsServiceImpl implements TGoodsService{
    @Autowired
    TGoodsMapper goodsMapper;
    @Override
    public List<TGoods> queryGoodsByNameLike(String name) {
        TGoodsExample example = new TGoodsExample();
        example.createCriteria().andGoodsnameLike('%'+name+'%');
        return goodsMapper.selectByExample(example);
    }

    @Override
    public TGoods queryGoodsById(int goodsid) {
        return goodsMapper.selectByPrimaryKey(goodsid);
    }
}
