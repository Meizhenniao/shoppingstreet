package cn.majestyz.service;

import cn.majestyz.entity.TGoods;

import java.util.List;

/**
 * Created by MeiZhen on 2019/4/25.
 */
public interface TGoodsService {
    //search for goods by user init_name
    List<TGoods> queryGoodsByNameLike(String name);

    TGoods queryGoodsById(int goodsid);
}
