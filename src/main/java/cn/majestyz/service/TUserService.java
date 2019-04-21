package cn.majestyz.service;

import cn.majestyz.entity.TUser;
import org.springframework.stereotype.Service;

/**
 * Created by MeiZhen on 2019/4/20.
 */

public interface TUserService {
    public void addUser(TUser u);
    boolean isExist(String name);
    TUser identifyUser(String username,String password);
}
