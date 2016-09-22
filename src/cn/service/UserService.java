package cn.service;

import cn.bean.user;

public interface UserService
{
    public user searchUser(int id);
    public boolean s_register_user(String name,String sex,String phone,String email,String username,String password);
}
