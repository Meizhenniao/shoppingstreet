package cn.majestyz.service.impl;

import cn.majestyz.entity.TUser;
import cn.majestyz.entity.TUserExample;
import cn.majestyz.mapper.TUserMapper;
import cn.majestyz.service.TUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by MeiZhen on 2019/4/20.
 */
@Service
public class TUserServiceImpl implements TUserService{
    @Autowired
    TUserMapper userMapper;

    @Override
    public void addUser(TUser u) {
        userMapper.insertSelective(u);
    }

    @Override
    public boolean isExist(String name) {
        TUserExample example =new TUserExample();
        example.createCriteria().andUsernameEqualTo(name);
        List<TUser> result= userMapper.selectByExample(example);
        if(!result.isEmpty())
            return true;
        return false;

    }

    @Override
    public TUser identifyUser(String username, String password) {
        TUserExample example =new TUserExample();
        example.createCriteria().andUsernameEqualTo(username).andPasswordEqualTo(password);
        List<TUser> result= userMapper.selectByExample(example);
        if(result.isEmpty())
            return null;
        return result.get(0);
    }

}
