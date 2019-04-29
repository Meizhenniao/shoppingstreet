package cn.majestyz.service.impl;

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
}
