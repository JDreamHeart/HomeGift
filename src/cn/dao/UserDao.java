package cn.dao;

import cn.bean.user;

public interface UserDao
{
    public user finduserById(int id);
    public boolean register_user(String name,String sex,String phone,String email,String username,String password);
}
