package cn.majestyz.service;

import cn.majestyz.entity.TCartitem;

import java.util.List;

/**
 * Created by MeiZhen on 2019/4/23.
 */
public interface TCartitemService {
    List<TCartitem> getLimitedCartitemsByUserId(int userid, int limit);

    List<TCartitem> getCartitemsByUserId(int userid);
}
