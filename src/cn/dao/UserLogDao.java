package cn.dao;

import cn.bean.user;

public interface UserLogDao
{
    public user findUser(String username,String password);
}
